#include <iostream>


/**
 *
 *
 Rozšiřte skupinu překladačů gcc/llvm o nový jednoduchý frontend
 zpracovávající vstupní jazyk inspirovaný jazykem Pascal.
 Výstupem frontendu bude abstraktní syntaktický strom ve formátu GENERIC
 překladačů gcc/IR
 V našem vstupním jazyce se omezte na deklaraci
 konstant, globálních proměnných a funkcí, a datový typ int.
 Číselné konstanty umožněte zadávat dekadicky, hexadecimálně a octalově.
 Podporujte aritmetické výrazy s operacemi +, -, *, div, mod a závorkami.
 Z příkazů podporujte přiřazení, if, while, for, readln a writeln.
 Samozřejmě podporujte deklaraci a volání funkcí, procedur s partametry, i v rekurzi.

Pro vstup a výstup (readln a writeln) vytvářejte uzly stromy reprezntující volání standardních funkcí scanf a printf, které jsou k dispozici přilinkováním v prostředí semestrální úlohy. Načítejte a vypisujte vždy jedno číslo.

Váš frontend bude muset pro zisk bodů za jednotlivé úrovně semestrální práce zkompilovat jednoduché programy. Tyto programy jsou dostupné a slouží především pro zjasnění syntaxe.

  (http://gcc.gnu.org/onlinedocs/gccint/
 sekce 05. Language front Ends in GCC,
 sekce 09. Passes and Files of the Compiler
 sekce 11. GENERIC).

    Main funkce, výpis čísel, načítání čísel, globální proměnné, výrazy, přiřazení,
    číselné konstanty v dekadické soustavě:
    základ, Číselné konstanty v hexadecimální a oktalové soustavě  (prefix $ a &): 5%,

    If, While (společně s příkazem break): 10%
    For (to i downto; společně s příkazem break): 10%
    Vnořené bloky: 10%
    Statické pole (indexované v jakémkoli intervalu hodnot): 15%
    Procedury, Funkce, lokální proměnné, exit: 15%
    Parametry funkcí a procedur: 10%
    Rekurze: 10%
    Nepřímá rekurze: 15%
 */
using namespace std;

typedef enum {
    IDENTIFIKATOR /* a */,
    PLUS /* + */,
    KRAT /* * */,
    LPAR /* ( */,
    RPAR /* ) */,
    EOI /* konec vstupu */

} LexSymbol;



// TODO ************************************************************


LexSymbol Symb;

void InitLexan(char []) {}

void ChybaSrovnani(LexSymbol s) {
    cout << "Chyba pri srovani ocekavano '" << s << "'" << "Misto toho " << Symb << endl;
}

void ChybaCteni(char c) {
    cout << "Chyba pri cteni symbolu '" << c << "'" << endl;
}

void Chyba(const string &s) {
    cout << s << endl;
}

void CtiSymb() {
    char c;

    while (!cin.bad() || cin.eof()) {
        cin >> c;

        if( c == '\n')
            Symb = EOI;

        if (isspace(c))
            continue;

        if (isalnum(c))
            Symb = IDENTIFIKATOR;

        else if (c == '+')
            Symb = PLUS;

        else if (c == '*')
            Symb = KRAT;

        else if (c == '(')
            Symb = LPAR;

        else if (c == ')')
            Symb = RPAR;
        else
            return ChybaCteni(c);

        return;
    }
    Symb = EOI;
}

//******************************************************************

void Srovnani(LexSymbol s) {
    if (Symb == s)
        CtiSymb();
    else
        ChybaSrovnani(s);
}

//******************************************************************
void Vyraz(); /* E */
void ZbVyrazu(); /* E' */
void Term(); /* T */
void ZbTermu(); /* T' */
void Faktor(); /* F */

///*************************************************************************************
void Vyraz() {   /* E */

    switch (Symb) {
        case IDENTIFIKATOR:
        case LPAR:
            printf("(1) E -> T E'\n");
            Term();
            ZbVyrazu();
            break;
        default:
            Chyba("chyba pri expanzi E");
    }
}

void ZbVyrazu() {   /* E' */
    switch (Symb) {
        case PLUS:
            printf("(2) E' -> + T E'\n");
            Srovnani(PLUS);
            Term();
            ZbVyrazu();
            break;
        case RPAR:
        case EOI:
            printf("(3) E' -> e\n");
            break;
        default:
            Chyba("chyba pri expanzi E'");
    }
}

void Term() {    /* T */
    switch (Symb) {
        case IDENTIFIKATOR:
        case LPAR:
            printf("(4) T -> F T'\n");
            Faktor();
            ZbTermu();
            break;
        default:
            Chyba("chyba pri expanzi T");
    }
}

void ZbTermu() {    /* T' */
    switch (Symb) {
        case KRAT:
            printf("(5) T' -> * F T'\n");
            Srovnani(KRAT);
            Faktor();
            ZbTermu();
            break;
        case PLUS:
        case RPAR:
        case EOI:
            printf("(6) T' -> e\n");
            break;
        default:
            Chyba("chyba pri expanzi T'");
    }
}

void Faktor() {    /* F */
    switch (Symb) {
        case IDENTIFIKATOR:
            printf("(7) F -> a\n");
            Srovnani(IDENTIFIKATOR);
            break;
        case LPAR:
            printf("(8) F -> ( E )\n");
            Srovnani(LPAR);
            Vyraz();
            Srovnani(RPAR);
            break;
        default:
            Chyba("chyba pri expanzi F");
    }
}
///*************************************************************************************

int main(int argc, char *argv[]) {

    char *jmeno;
    printf("Syntakticky analyzator\n");
    if (argc == 1) {
        printf("Vstup z klavesnice, zadejte zdrojovy text\n");
        jmeno = nullptr;
    } else {
        jmeno = argv[1];
        printf("Vstupni soubor %s\n", jmeno);
    }


    InitLexan(jmeno); // todo zatim nemam jako tridu - nepotrebuji

    CtiSymb();

    Vyraz();

    if (Symb != EOI)
        Chyba("neocekavany symbol");

    printf("Konec\n");
}