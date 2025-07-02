V současném stavu elektronických objednávek laboratorních vyšetření se odráží potřeby a možnosti tuzemských informačních systémů i praxe tak jak se po léta kontinuálně vyvíjely.

**Budoucí stav musí zachovávat kompatibilitu se současným stavem a zároveň musí reagovat na potřeby přeshraniční spolupráce a projektů interoperability v rámci EU a světa.**

**Proto je na popis současného stavu nutné nahlížet i ve vazbě na stav budoucí -** **jde o zachování nutné kompatibility a návaznosti**.

### Proč používat elektronickou žádanku?

Jedním z důležitých procesů preanalytické fáze je vytvoření žádanky na vyšetření a následná registrace laboratorních vzorků do laboratorního informačního systému, tj. zadání potřebných dat – identifikačních údajů pacienta, typů vzorků, požadovaných analytů apod. Proces je možné automatizovat zavedením elektronické žádanky.

První použití elektronických žádanek v českých laboratořích se datuje do 2. poloviny 90. let. Přesto do dnešního dne nedošlo k takovému rozšíření, které by odpovídalo dnešnímu stavu dostupných technologií. Přitom zavedení elektronické žádanky řeší největší slabiny oproti manuálnímu postupu - je rychlejší a vylučuje chyby při manuálním přepisu informací z papíru do LIS. Mimo to je vhodně koncipovaná aplikace tvorby elektronické žádanky schopna eliminovat další chyby již v místě odběru. Lze kontrolovat správnost a kompletnost nutných údajů, množství potřebného materiálu, určit typ odběrových zkumavek (nádobek), upozornit na výjimečné podmínky některých analytů. Při správné spolupráci NIS s LIS pak lze při registraci vzorku v laboratoři, kterou lze omezit na pouhé pípnutí scanneru, automaticky správně vzorek zatřídit, upozornit na výjimečné analyty, na nedodržení časových posloupností i limitů, tisknout štítky na alikvoty, naznačit cestu primární zkumavky laboratoří atd. Mimo to je zcela přesně v jednotlivých databázích zaznamenáno kdy, kdo a co – zadání, uzavření a odeslání žádanky, čas odběru, transportu, přijetí vzorku v laboratoři atd.

### Popis současného stavu a z něj vyplývající požadavky na elektronickou žádanku

**Elektronické objednávky laboratorních vyšetření se v současnosti realizují různým způsobem v závislosti na různých jevech. Vzniklá elektronická žádanka musí tyto způsoby reflektovat a umožnit jejich realizaci a to zejména s ohledem na:**

**Způsob odběru pacienta**:

- Žádanka o laboratorní vyšetření může být zasílána paralelně s příslušnými potřebnými odebranými materiály. Sem patří i varianta, kdy je zasílána pouze žádanka bez materiálu, který je již uložený v laboratoři z vyšetření předchozího a umožní se další doobjednání.
- Žádanka o laboratorní vyšetření může být zasílána současně coby objednávka realizace odběrů v laboratoři. Sem patří i zátěžové testy realizované v laboratoři.
- Žádanka o laboratorní vyšetření může být zasílána současně coby objednávka realizace odběru u lůžka. Jedná se o velmi speciální variantu pro vybraná vyšetření a pro lůžková zařízení.

**Místo realizace laboratorních vyšetření (testů)**:

Žadatel nemusí řešit, zda požadovaná vyšetření řeší adresovaná laboratoř přímo, nebo zda využívá služeb laboratoře smluvní, případně pro některá vyšetření musí využít i služeb laboratoře referenční. Toto se sice již týká další adresné komunikace laboratoře s laboratoří, ale je to také řešeno příslušnou formou elektronické žádanky:

- Některá vyšetření pro laboratoř provádí patřičně nasmlouvaná laboratoř smluvní
- Některá vyšetření je z důvodů legislativních nutné zaslat do laboratoře referenční

Elektronická žádanka musí svým datovým obsahem zabezpečit, aby mohlo dojít k správnému propojení dílčích požadavků zasílaných do jiných laboratoří. Jen tak je možné zajistit bezpečnou identifikaci vrácených výsledků a jejich správné přiřazení i realizovat další související potřebné dialogy.

**Odbornost laboratoře**:

Žádanka o laboratorní vyšetření může být zasílána konkrétní laboratoři příslušné odbornosti odpovídající zasílaným požadavkům, nebo na „centrální příjem“ zajišťující příjem požadavků pro více navázaných laboratoří příslušných odborností. O předání požadavků a materiálů se pak postará toto pracoviště.

Z hlediska odbornosti lze nyní pracovat s laboratořemi z oblasti: biochemie, hematologie, transfúzní medicíny, imunologie a alergologie, farmakologie, toxikologie, mikrobiologie (zahrnuje také virologii, mykologii, parazitologii), sérologie, genetiky, cytologie a antropometrie.

**Žádanky výčtově a problémově orientované:**

Elektronická žádanka musí být schopná pracovat s dvěma základními typy objednávek:

- výčtově orientované žádanky obsahují především konkrétní objednávky vyšetření dle číselníku NČLP (typické např. pro běžná biochemická či hematologická vyšetření)
- problémově orientované žádanky popisují především problém, který je třeba řešit ve spolupráci s laboratoří (typické např. pro mikrobiologická či cytologická vyšetřená), kladou tedy jistou ‚klinickou otázku‘, na kterou se má s pomocí vyšetření odpovědět a je zde předpokládán další následný dialog mezi žadatelem a laboratoří

K výčtovým i problémově orientovaným laboratorním žádankám mohou být vedle základních administrativních informací připojované základní formalizované informace o pacientovi nebo o vzorku (viz. Kapitola 3.6 Volba terminologie).

**Specifické požadavky na další sdělované doprovodné informace:**

Elektronická žádanka musí také respektovat specifické potřeby jednotlivých gescí:

- **Mikrobiologie**:

Gesce mikrobiologie zahrnuje dva odlišné přístupy k objednávkám, realizacím a datovým strukturám. Průkazy a další vyšetření konkrétně žádaných agens jsou z hlediska objednávání i sdělování výsledků realizované výčtově, tj. podobné, jako u jiných laboratorních oborů (např. biochemie), ale kultivační vyšetření, u nichž je určení agens a jeho vlastností teprve předmětem vyšetření, mají specifické požadavky na objednávku i formu sdělování výsledků a jsou řešené relativně samostatně. Jedná se o objednávky problémově orientované. Teprve po určení agens vznikají další požadavky na vyšetření, jejichž volba může být na příslušném odborníkovi mikrobiologické laboratoře, nebo v další spolupráci žadatele a mikrobiologické laboratoře. Vše se podřizuje aktuálnímu stavu pacienta, čili není vztaženo k původnímu datu vzniku žádanky a datu odběru, ale k datu aktuálnímu. Z výsledků provedených vyšetření mohou následně vyplývat další související objednávky dalších vyšetření včetně odběrů nových vzorků.

- **Genetika**:

Podobně jako v mikrobiologii je tomu i v genetice, kde běžné průkazy somatických mutací jsou řešené tak, jako u jiných laboratorních oborů (tj. výčtově orientované objednávky), ale např. vyšetření germinálního genomu bude vyžadovat jiný přístup a řadu dalších informací o pacientovi a zacílení požadovaných vyšetření (tj. problémově orientované objednávky).

- **Transfúzní medicína:**

Jedná se o velmi speciální problematiku, která současně zahrnuje i objednávky transfúzních přípravků (krví, krevních derivátů atd.). Zde je potřeba vyřešit i požadavky na formalizované zasílání řady speciálních informací (transfúzní anamnézu, specifikace transfúzních přípravků, speciální vyšetření aj.).

- **Cytologie a patologie:**

Podobně jako v mikrobiologii a genetice i zde je předpoklad souběhu výčtově i problémově orientovaných objednávek a potřeby sdělení specifických informací nutných pro provedení vyšetření.

Mnohé odbornosti mají specifické požadavky na sdělování potřebných dalších informací, které musí být součástí žádanky, vedle informací běžných, nezbytných či potřebných (jako je standardně sdělovaný věk, pohlaví, hlavní diagnóza, či diagnózy, případně hmotnost, výška atd.).

Například farmakologická vyšetření vyžadují podrobnou informaci o podávaných lécích, mikrobiologická vyšetření vyžadují přesnou lokalizaci místa odběru, informace o užívaných antimikrobiálních a souvisejících látkách, případně o očkování, v mnoho případech je důležitý i způsob odběru biologického materiálu. Některá biochemická vyšetření tělesných tekutin vyžadují znalost objemů za čas, jiná vyšetření vyžadují informaci o graviditě či o ovulační fázi, další například o transfúzi či podávání krevních derivátu atd. Pro některá vyšetření, jako například zátěžové testy, je nutné sdělovat tzv. urgentní informace o alergiích a dalších rizikových faktorech atd.

Všechny tyto potřebné informace, které musí nebo mají být součástí objednávky (žádanky), jsou patřičně popsané v Laboratorní příručce příslušné laboratoře. Jejich nedodání (nesdělení) může negativně ovlivnit kvalitu vyšetření, někdy i znemožnit realizaci vyšetření. V aktuálně používaných komunikačních standardech je řada ze zmíněných údajů předávána formalizovaně, nemalá část na formalizaci čeká.

Elektronická žádanka, která má spolehlivě komunikovat objednávky, musí tyto potřeby ošetřit.

**Workflow současné elektronické žádanky**

V ideálním případě a v nejjednodušším provedení je zasílána žádost (žádanka o realizaci vyšetření), na kterou je odpovězeno dodáním požadovaného (sdělením výsledků vyšetření). V praxi vzniká řada situací, které je nutné řešit, takže je nutné uvažovat více navazujících fází.

Níže je uveden výčet fází, které je nutné či vhodné uvažovat – obrázek ilustruje celý současný průběh procesu, do objednávky, přes zpracování až po vydání výsledku, aby bylo možné žádanku správně zasadit.

Od elektronické žádanky je tedy očekáváno, že bude schopna správně ošetřit všechny situace, které mohou nastat a to především:

- realizace objednávky (objednávka vyšetření, výkonu nebo úkonu s příslušnými specifikacemi), žádanka
- doobjednávka k již zaslané objednávce (lze v časově omezeném období)
- oprava objednávky ze strany (lze v časově omezeném období)
- stornování objednávky (lze v časově omezeném období)



**Provázání objednávek vyšetření se zasílanými vzorky (materiály):**

Prostřednictvím elektronické žádanky přicházejí požadavky na vyšetření a paralelně, s větším či menším časovým posuvem, přicházejí vzorky. Pokud laboratoř provádí odběr, vzorky vznikají její péčí. Žádanky je nutné propojit s příslušnými vzorky.

Vzorky musí být následně předávané ke zpracování s jasným určením kam a s vyznačením, jaké procesy mají proběhnout a jaká stanovení budou provedena. Před vlastním zpracováním musí mít každý vzorek jednoznačné ID vytvořené s ohledem na technické možnosti i praktická omezení (viz kapitola 2.4.6. Identifikace odebraných zkumavek).

Elektronické žádanky musí umožňovat objednávky adresně zacílené na jednotlivé konkrétní zaslané vzorky (tj. jaká vyšetření z jakého konkrétního vzorku), nebo ponechají přiřazení objednávek k vzorkům na laboratoři. V rámci jedné zaslané objednávky (žádanky) lze oba přístupy kombinovat (část objednávek může být zacílena na konkrétní vzorek, zbylé jsou ponechány na laboratoři, která si je sama vhodně přiřadí).

Některá vyšetření vyžadují speciální ošetření vzorků i realizace objednávek (například mikrobiologická kultivační vyšetření), což řeší příslušné dokumenty (SOP) konkrétní laboratoře.

**Adresnost žádanek:**

V současné době v České republice neexistuje možnost vytvoření neadresné žádanky pro laboratorní vyšetření – všechny žádanky jsou adresované konkrétnímu pracovišti, které následně zabezpečí laboratorní servis pro pacienta. Pacient tedy nemá praktickou možnost svobodné volby laboratoře. K tomuto faktu také přispívá absence centrálního úložiště žádanek, které by zabezpečilo obslužné činnosti (uložení žádanek, možnost jejich stažení, kontroly apod.).

Elektronická žádanka (v součinnosti se systémem centrálního úložiště) musí být schopna ošetřit obě situace – žádanku adresnou a neadresnou.

Na druhou stranu přináší možnost neadresné žádanky a svobodného výběru poskytovatele zdravotnických služeb v oboru laboratorní péče nové výzvy z hlediska udržení dostatečné kvality péče a správné komunikace (viz kapitola 2.4 Diskuze).
