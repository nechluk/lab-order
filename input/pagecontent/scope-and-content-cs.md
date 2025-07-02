### Základní principy standardu

Standard elektronické laboratorní žádanky je založen na následujících principech:

- Hlavním cílem elektronické laboratorní žádanky je zrychlení a zpřesnění celého procesu žádaní o laboratorní vyšetření. Další případné cíle musí být podřízeny hlavnímu cíli.
- Standard elektronické laboratorní žádanky je vysoce strukturovaný, což umožňuje bezchybný přenos dat mezi žadatelem, odběrovým místem a laboratoří.
- Díky vysoké míře formalizace může pak část procesu běžet automaticky, bez zásahu obsluhy, což vylučuje chyby lidského faktoru – přidělení identifikátorů, tvorba unikátních identifikačních štítků, kontrola úplnosti údajů, automatické přijetí laboratoří apod.
- Vysoká míra strukturovanosti umožňuje tvorbu laboratorní žádanky pro různé odbornosti, protože respektuje a postihuje jejich specifika.
- Interoperabilita elektronické laboratorní žádanky se vztahuje mj. také k vznikajícímu evropskému standardu elektronické laboratorní žádanky a k aktuálnímu českému standardu DS4.
- Část číselníků a kódových systémů současně používaných DS4 je mapována na používané zahraniční číselníky a kódové systémy, aby byla zaručena evropská potažmo světová interoperabilita.

### Volba terminologie

#### **Číselník pro realizaci objednávek laboratorních testů a sdělení doplňujících informací**

Formalizované výčtové objednávky laboratorních testů (vyšetření) i formalizovaná sdělení základních informací o pacientovi a o zasílaném vzorku se realizují prostřednictvím standardem určených číselníků, v ČR se jedná o Národní číselník laboratorních položek (NČLP), který je po celý čas užíván ve vazbě na standard DASTA a nadále bude užíván i v rámci standardu HL7 FHIR.

NČLP byl již z velké části namapován na mezinárodní číselník NPU a bude probíhat mapování na další ve světě používané číselníky. Díky tomu bude umožněna „transformace“ objednávek ze zahraničí a výsledků do zahraničí i naopak.

Stěžejní je korektní používání aktuální verze NČLP s absolutním vyloučením non-NČLP položek. Pro správné fungování systému elektronických žádanek bude proto nevyhnutná důsledná kontrola stavu aktuálnosti verzí jak datového standardu tak i všech použitých číselníků.

**Sdělování základních formalizovaných informací o pacientovi:**

Pro sdělování formalizovaných informací o pacientovi v rámci žádostí o laboratorní vyšetření se pracuje s položkami NČLP, které jsou zařazené do třídy ISLIP (IS - informace o pacientovi pro laboratorní žádanku). Takto jsou sdělovány důležité informace, které mohou významně ovlivnit vlastní zpracování či interpretaci (např. výběr škály). Podrobný popis, co a jak je sdělováno, je součástí definice položky NČLP.

**Sdělování základních formalizovaných informací o zasílaném vzorku:**

Pro sdělování formalizovaných informací o zasílaném laboratorním vzorku se pracuje s položkami NČLP, které jsou zařazené do třídy ISLOD (IS - informace o vzorku pro laboratorní žádanku). Podrobný popis, co a jak je sdělováno, je součástí definice položky NČLP.

K výčtovým i problémově orientovaným laboratorním žádankám mohou být vedle základních administrativních informací tyto základní formalizované informace o pacientovi nebo o vzorku připojeny a současně mohu být posílané další informace formalizované i volným textem.

Pro výčtově orientované formalizované objednávání laboratorních vyšetření se pracuje s položkami NČLP, které se liší způsobem realizace. Pracujeme zde s položkami:

- měřenými (nejvíc frekventované, jedná se o běžné naměřené hodnoty)
- vypočítávanými (z naměřených hodnot)
- vypočítávanými, ale určenými pouze pro výpočty odpadů za den (případně jiné časové období)
- skupinovými objednávkami (multiplexy a jiné skupiny, například krevní obraz, diferenciál atd.)
- mikrobiologickými vyšetřeními kultivačními, mikroskopickými aj. (kromě cílených vyšetření agens)
- funkčními testy v rámci „sledování v časovém intervalu“

Při objednávání položek „měřeného“ typu se většinou pracuje s NČLP položkami s blíže neurčenou procedurou (označenou procedury položky znakem „\*“). Jedná se o situace, kdy není vyžadována realizace vyšetření s konkrétní požadovanou procedurou. Objednávky je také možné realizovat s určením konkrétní procedury (a to výběrem NČLP položky s odpovídající procedurou).

### **Popis základních částí eŽádanky**

V této kapitole je naznačen základní obsah jednotlivých sekcí a dílčích částí elektronické žádanky. Podrobný výčet datových elementů je uveden v kapitole 5.5.1 Datová sada.

##### Hlavička administrativní údaje

Tato část je povinná a zahrnuje základní formální aspekty elektronické žádanky specifikované zákonem (Zákon 372/2011 o zdravotních službách a podmínkách jejich poskytování) a prováděcím předpisem (Vyhláška 98/2012 o zdravotnické dokumentaci) k tomuto zákonu a některé další údaje důležité pro administrativní kontext propouštěcí zprávy, jak jej specifikuje návrh Evropského standardu. Mezi tyto údaje patří:

- Identifikační a kontaktní údaje pacienta, pro kterého je eŽádanka vydávána;
- Údaje o zdravotní pojišťovně a způsobu úhrady;
- Identifikační a kontaktní údaje žadatele (zdravotnického pracovníka nebo fyzické osoby), který elektronickou žádanku vytvořil;
- Identifikační a kontaktní údaje zpracovatele, který na základě žádanky poskytl zdravotní služby;
- Příjemci (adresáti) příslušného nálezu, který vznikl na základě žádanky;
- Metadata dokumentu;
- Elektronický podpis;

##### Tělo žádanky (část společná všem žádankám)

##### Tato část je povinná a zahrnuje následující sekce

- Informace o objednávce a důvod objednávky
- Informace o klinické události
- Informace o úhradě
- Informace o termínu dalšího vyšetření
- Přílohy

##### Tělo žádanky (část specifická pro žádanku laboratorní)

##### Tato část je povinná a zahrnuje následující sekce

- Informace o vzorku
- Klinické informace
- Datové elementy objednávky vyšetření

### **Problematika časových údajů**

Datumy a časy, které je nutné nebo vhodné evidovat, lze obecně rozdělit do tří skupin:

Požadavek, odběr a doručení do laboratoře:

- čas vzniku požadavku na vyšetření _(v dokumentaci pacienta)_
- čas plánovaného odběru vzorku nebo ukončení sběru _(konkrétní údaj, nebo interval)_
- čas odběru vzorku nebo ukončení sběru (váže se k pacientovi, sděluje se povinně; v DS4 tzv. „klinická událost“)
- čas odeslání vzorku do laboratoře _(tj. čas zahájení transportu_)
- čas doručení vzorku do laboratoře = čas zahájení zpracovávání vzorku laboratoří _(tj. čas ukončení transportu)_

Odesílání požadavků z IS žadatele do laboratoře:

- vytvoření žádosti v IS objednatele
- odeslání žádosti (eviduje žadatel)
- doručení žádosti (eviduje laboratoř, fakultativně se sděluje potvrzení přijetí)
- přijmutí a zpracování žádosti IS laboratoře (eviduje laboratoře)

Zpracování v laboratoři a sdělení výsledků (_není předmětem laboratorní žádanky_)
