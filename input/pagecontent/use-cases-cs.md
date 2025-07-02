Elektronická žádanka laboratorního vyšetření slouží primárně zdravotnickým pracovníkům, kteří potřebují pro pacienta objednat laboratorní vyšetření jako náhrada tradiční papírové žádanky. Typicky ji tedy využívají praktičtí lékaři, specialisté, nemocniční lékaři, ambulantní zdravotnická zařízení a jiný poskytovatelé zdravotní péče ale může sloužit i jakékoliv fyzické osobě v roli samoplátce a žadatele vyšetření.

### Společní aktéři

#### **Pacient**
- Osoba, která využívá zdravotnické služby za účelem diagnostiky, léčby, prevence nebo sledování svého zdravotního stavu.

#### **Žadatel**

- Osoba nebo instituce, která zadává požadavek na provedení laboratorního vyšetření z biologického materiálu pacienta. Žadatel zodpovídá za správnost a úplnost požadavku. Je jím obvykle lékař nebo zdravotnické zařízení, které potřebuje výsledky laboratorního vyšetření pro diagnostiku, léčbu nebo monitorování zdravotního stavu pacienta. Kvalita a přesnost jím poskytnutých informací ovlivňuje nejen laboratorní analýzu, ale také interpretaci výsledků a navazující péči o pacienta. V roli žadatele může být i jakákoliv fyzická osoba – samoplátce, která se rozhodla oslovit odběrové místo/laboratoř o poskytnutí vyšetření, které jsou na komerční bázi dostupné.

#### **Odběrové místo**

Je místo provedení odběru biologického materiálu od pacienta, nebo místo, kam pacient odebraný materiál (podle instrukcí žadatele) přinese. Odběrové místo může být samostatnou entitou/subjektem, který zajišťuje pouze odběr materiálu a jeho správný transport do laboratoře nebo může být integrální součástí laboratoře.

V obou případech musí odběrové místo správným způsobem zajistit agendu související s odběrem (správný odběr materiálu, přidělení a označení každé odběrové nádoby unikátním identifikátorem, doplnění údajů do žádanky a jej aktualizace atd.).

#### **Systém elektronických žádanek**

- Informační systém v rámci systému zdravotní péče, který umožňuje elektronické vytváření, odesílání a správu požadavků na laboratorní vyšetření nebo jiné vyšetření. Tento systém nahrazuje tradiční papírové žádanky a výrazně přispívají k digitalizaci zdravotnictví a ke zlepšení komunikace mezi zdravotnickými zařízeními a laboratořemi. V nemocnicích se zpravidla jedná o modul v NIS, u praktických lékařů jde o modul jejich ISPL a některé laboratoře umožňují u těch, kteří takovou možnost nemají, používat pro vytváření elektronických objednávek jich webovou aplikaci. Může se také jednat o centrální systém elektronických žádanek, například systém eŽádanky.

#### **Informační systém odběrového místa**

- Specializovaný informační systém používaný v odběrových centrech zdravotnických zařízení nebo laboratorních řetězců, jehož hlavním cílem je podporovat a zefektivnit procesy spojené s odběrem biologického materiálu pro laboratorní vyšetření. Jedná se např. o procesy správy žádanek, generování unikátních identifikátorů odběrových nádob, sledování vzorků, logisticky a plánování. V nemocnicích se často jedná o modul používaného NIS.

#### **Informační systém praktického lékaře**

- Softwarové řešení navržené pro potřeby ordinací praktických lékařů. Jeho hlavním cílem je digitalizovat a zefektivnit administrativní a klinické procesy v ordinaci, zlepšit správu pacientů a podpořit lékaře při diagnostice a léčbě. Jeho součástí je také správa žádanek a komunikace s laboratořemi.

#### **Laboratorní informační systém**

- Specializovaný softwarový systém, který slouží ke správě a řízení procesů v klinických, diagnostických a jiných laboratořích. Řeší komplexnímu zpracování dat (od příjmu požadavku, přes zpracování až po jeho vydání), zefektivňuje činnosti spojené se vzorky, zajišťuje komunikaci s preanalytickými linkami i analyzátory, zajišťuje různé stupně kontrol a dále minimalizuje chyby a zlepšuje komunikaci mezi laboratoří a zdravotnickými zařízeními.

#### **Nemocniční informační systém**

- Nemocniční informační systém je software podporující a evidující všechny medicínské procesy a postupy. Zajišťuje mezioborovou komunikaci a spolupráci v rámci nemocnice. Jednou ze součástí nemocničního informačního systému je modul tvorby elektronické laboratorní žádanky, který usnadňuje komunikaci s laboratoří.

#### **Centrální úložiště žádanek**

- Centrální úložiště žádanek je jedna z komponent systému eŽádanky, která je odpovědná za jejich uložení a poskytuje servis, který souvisí s jejich dalším osudem. Pokud se budou žádanky zasílat na úložiště žádanek, mělo by úložiště mimo jiné zajišťovat:
- přijímat žádanky adresné (určené pro konkrétní v žádance uvedené pracoviště) i neadresné (pracoviště si zvolí pacient, nebo jiná odpovídající právnická osoba (např. zdravotnický pracovník vykonávající domácí péči aj.)); pokud bude úložiště sloužit pouze pro objednávky neadresné (adresné budou zasílané přímo provádějícímu pracovišti), je tento bod bezpředmětný
- přijímat žádanky výčtové (tj. s objednávkami konkrétních vyšetření dle NČLP, společně se zasílanými běžnými formalizovanými informacemi o pacientovi a vzorcích) i žádanky problémově orientované (tj. s žadatelem formulovaným problémem nebo klinickou otázkou, které mají být řešeny, společně s podrobnými klinickými informacemi potřebnými k řešení problematiky)
- přidělit každé žádance jednoznačné ID z úložiště, které bude bezpečně sděleno odesílateli žádanky (pod ním bude v úložišti evidována); toto ID úložiště bude sloužit pouze ke komunikaci s úložištěm (nejedná se o ID objednávky ani ID klinické události, které vytváří IS žadatele a které na úložiště přichází vždy se žádankou)
- uložit žádanku na dobu nezbytně nutnou s ohledem na povahu žádosti (realizace s časovým odkladem aj.)
- možnost přidělit odběrovým místům ID pro identifikaci jednotlivých zkumavek (viz kapitola 2.4.6. Identifikace odebraných zkumavek). Vedle režimu přidělování online by mělo být možné vygenerování identifikátorů zkumavek pro konkrétní pracoviště předem, které pak budou postupně použity. Tímto způsobem se dá překlenout doba, kdy by došlo k výpadku služby.

_Cyklické opakování žádanky (například opakovaná vyšetření podle naplánovaného časového rozpisu či s danou frekvencí) by nemělo řešit úložiště, ale mělo by být řešeno informačním systémem žadatele, aby bylo zajištěno korektní přidělování ID objednávky (klinické události) a další vazby. S ohledem na korektní vazby na IS žadatele je „recyklace“ žádanky na úložišti nevhodná._

- evidovat, zda byla žádanka vyzvednuta provádějícím pracovištěm a informovat o tom dle domluvených pravidel odesílatele žádanky; taktéž ho informovat, pokud byla žádanka označena jako problematická (neúplná, chybná atd.), či pokud nebyla žádanka do stanovené mezní doby vyzvednuta a případně náležitě řešit její další osud
- to, že je žádanka zasílána na úložiště (výhradně, nebo jen v kopii) bude ve vlastní žádance patřičně vyznačeno. Taktéž bude v žádance uvedeno, do kdy má být požadavek realizován (mezní doba pro vyzvednutí a zahájení zpracování)

Poznámka: Je samozřejmě předpokládána součinnost s kmenovými a event. dalšími centrálními registry.

### Společné předpoklady

Ve všech popsaných use-case se předpokládá naplnění následujících bodů:

- Žadatel musí mít přístup do systému pro elektronické objednávání (buď součást klinického informačního systému, mobilní či webové aplikace), aby mohl vytvořit elektronickou žádanku, která bude následně doručena do určené laboratoře nebo systému centrálního úložiště.
- Musí být k dispozici seznam laboratoří, které umožňují elektronické objednání služeb
- Musí být odsouhlasen a k dispozici seznam laboratorních služeb (vyšetření), které je možné elektronicky objednat.
- Zejména pro neadresní objednávky musí být k dispozici možnost vyhledání laboratoře, která je schopna zpracovat danou objednávku.
- Musí být k dispozici zabezpečený komunikační kanál mezi žadatelem ("zadavatelem objednávky"), odběrovým místem a laboratoří ("zpracovatelem objednávky") nebo centrálním úložištěm žádanek.
- Centrální úložiště žádanek (pokud je použito) musí zajistit všechny nevyhnutelné záležitosti včetně přidělení ID úložiště, evidence vyzvednutí, uložení žádanky po dobu odpovídající době platnosti objednávky aj. (viz Sekce Centrální úložiště žádanek).

V případě, že se jedná o odběr v prostorách odběrového místa, musí být splněny také:

- Laboratoř musí mít přístup k systému pro ukládání žádanek nebo k centrálnímu úložišti žádanek
- Musí mít k dispozici seznam vhodných odběrových míst

### Popis use-case

#### **UC-01 Objednávka laboratorních vyšetření pro danou laboratoř (adresná) s provedením odběru v prostorách žadatele:**

<table><tbody><tr><th><p>Název</p></th><th><p>UC-01 Objednávka laboratorních vyšetření pro danou laboratoř (adresná) s&nbsp;provedením odběru v prostorách žadatele</p></th></tr><tr><td><p>Účel</p></td><td><p>Poskytovatelé zdravotní péče, pacienti a další klienti zdravotních služeb žádají o laboratorní služby vytvořením objednávky laboratorního vyšetření se specifikací laboratorní služby, která má být poskytnuta. Tento případ užití popisuje proces adresného elektronického objednávání laboratorních vyšetření (objednávající subjekt ví, která laboratoř a jak službu poskytne) s provedením odběru v&nbsp;prostorách žadatele.</p></td></tr><tr><td><p>Význam</p></td><td><p>Adresná objednávka laboratorních vyšetření se využívá po dohodě s pacientem (tak aby nebylo omezeno právo pacienta na svobodný výběr poskytovatele zdravotní péče) v případech, kdy pacient nemůže rozhodovat o&nbsp;výběru laboratoře. Jedná se zejména o případy, kdy by náhodný výběr laboratoře pacientem mohl vést ke snížení kvality péče nebo jeho poškození (např. z důvodu nedostatečné porovnatelnosti výsledků).</p></td></tr><tr><td><p>Doména</p></td><td><p>Laboratoře</p></td></tr><tr><td><p>Rozsah</p></td><td><p>Národní/regionální/lokální</p></td></tr><tr><td><p>Kontext</p></td><td><p>V současné době se podstatná část objednávek laboratorních testů stále provádí prostřednictvím papírového objednávkového systému.</p><p>Některé nemocniční i ambulantní laboratoře umožňují kromě papírových žádanek také elektronické objednávání laboratorních vyšetření, založené na datovém standardu DASTA. Elektronické objednávkové systémy jsou integrovány do řady především nemocničních informačních systémů a do některých IS praktického lékaře. Některé laboratoře umožňují také objednávání pomocí specializovaných webových aplikací. Všechny existující objednávkové systémy jsou zatím navrženy tak, že je objednávka adresná – uživatel tedy provádí objednávku pouze na konkrétní laboratoř.</p></td></tr><tr><td><p>Informace</p></td><td><p>Laboratorní objednávka</p></td></tr><tr><td><p>Aktéři</p></td><td><ul><li>Viz sekce Společný aktéři</li></ul></td></tr><tr><td><p>Předpoklady</p></td><td><ul><li>Viz sekce Společné předpoklady</li></ul></td></tr><tr><td><p>Funkční popis procesu</p></td><td><ul><li>Viz sekce Funkční popis procesu – společné části</li></ul><p>Části, které jsou od společné části odlišné, jsou uvedeny pod tabulkou v sekci Funkční popis procesu – část specifická pro use-case.</p></td></tr></tbody></table>

##### Funkční popis procesu – část specifická pro use-case

Příslušný use-case se od sekce Funkční popis procesu – společné části liší v následujících bodech:

3\. **Žadatel určí způsob a místo odběru vzorku**

Žadatel určí interní odběrové místo a sdělí pacientovi, kdy a kam se má dostavit. Typické situace při odběru na interním místě jsou:

- bezprostřední odběr v místě vzniku žádanky – ambulance, lůžkové oddělení
- naplánovaná ambulantní kontrola
- naplánovaný odběr na lůžku

Dané zdravotnické zařízení provádí odběry buď na výše zmíněných pracovištích nebo disponuje specializovaným místem odběru. Při odběru je využíván NIS, IS PL nebo jiný specializovaný IS.

#### **UC-02 Objednávka laboratorních vyšetření pro danou laboratoř (adresná) s provedením odběru v prostorách odběrového místa**

<table><tbody><tr><th><p>Název</p></th><th><p>UC-02 Objednávka laboratorních vyšetření pro danou laboratoř (adresná) s&nbsp;provedením odběru v prostorách odběrového místa</p></th></tr><tr><td><p>Účel</p></td><td><p>Poskytovatelé zdravotní péče, pacienti a další klienti zdravotních služeb žádají o laboratorní služby vytvořením objednávky laboratorního vyšetření se specifikací laboratorní služby, která má být poskytnuta. Tento případ užití popisuje proces adresného elektronického objednávání laboratorních vyšetření (objednávající subjekt ví, která laboratoř službu poskytne) s provedením odběru v odběrném místě nacházejícím se mimo prostory žadatele.</p></td></tr><tr><td><p>Význam</p></td><td><p>Adresná objednávka laboratorních vyšetření se využívá po dohodě s pacientem (tak aby nebylo omezeno právo pacienta na svobodný výběr poskytovatele zdravotní péče) v případech, kdy pacient nemůže rozhodovat o&nbsp;výběru laboratoře. Jedná se zejména o případy, kdy by náhodný výběr laboratoře pacientem mohl vést ke snížení kvality péče nebo jeho poškození (např. z důvodu nedostatečné porovnatelnosti výsledků).</p></td></tr><tr><td><p>Doména</p></td><td><p>Laboratoře</p></td></tr><tr><td><p>Rozsah</p></td><td><p>Národní/regionální/lokální</p></td></tr><tr><td><p>Kontext</p></td><td><p>V současné době se podstatná část objednávek laboratorních testů stále provádí prostřednictvím papírového objednávkového systému.</p><p>Některé nemocniční i ambulantní laboratoře umožňují kromě papírových žádanek také elektronické objednávání laboratorních vyšetření, založené na datovém standardu DASTA. Elektronické objednávkové systémy jsou integrovány do řady především nemocničních informačních systémů a do některých IS praktického lékaře. Některé laboratoře umožňují také objednávání pomocí specializovaných webových aplikací. Všechny existující objednávkové systémy jsou zatím navrženy tak, že je objednávka adresná – uživatel tedy provádí objednávku pouze na konkrétní laboratoř.</p></td></tr><tr><td><p>Informace</p></td><td><p>Laboratorní objednávka</p></td></tr><tr><td><p>Aktéři</p></td><td><ul><li>Viz sekce Společný aktéři</li></ul></td></tr><tr><td><p>Předpoklady</p></td><td><ul><li>Viz sekce Společné předpoklady</li></ul></td></tr><tr><td><p>Funkční popis procesu</p></td><td><ul><li>Viz sekce Funkční popis procesu – společné části</li></ul><p>Části, které jsou od společné části odlišné, jsou uvedeny pod tabulkou v sekci Funkční popis procesu – část specifická pro use-case.</p></td></tr></tbody></table>

##### Funkční popis procesu – část specifická pro use-case

Příslušný use-case se od sekce Funkční popis procesu – společné části liší v následujících bodech:

3\. **Žadatel určí způsob a místo odběru vzorku.**

Po dohodě s pacientem určí žadatel vhodné externí odběrové místo. Protože se jedná o adresnou žádanku do konkrétní laboratoře, je možnost výběru podmíněna existencí více odběrových míst, která jsou schopna všechny potřebné biologické materiály odebrat a transportovat v požadované kvalitě do určené laboratoř. V tomto případě by měl zdravotník respektovat pacientův výběr.

Pacient dostane identifikátor elektronické žádanky, který se následně prokáže při odběru. Identifikátor může být předán v papírové či elektronické formě. Jako nejvhodnější se jeví varianta použití mobilní aplikace a její spojení se systémem centrálního úložiště.

#### **UC-03 Elektronická objednávka laboratorních vyšetření bez uvedení laboratoře (neadresná) s provedením odběru v prostorách laboratoře**

<table><tbody><tr><th><p>Název</p></th><th><p>UC-03 Elektronická objednávka laboratorních vyšetření bez uvedení laboratoře (neadresná) s provedením odběru v prostorách laboratoře</p></th></tr><tr><td><p>Účel</p></td><td><p>Poskytovatelé zdravotní péče, pacienti a další klienti zdravotních služeb žádají o laboratorní služby vytvořením objednávky laboratorního vyšetření se specifikací laboratorní služby, která má být poskytnuta. Tento případ užití popisuje proces neadresného elektronického objednávání laboratorních vyšetření (laboratoř bude vybrána později v&nbsp;pracovním postupu buď objednávajícím subjektem, nebo samotným pacientem či klientem) s provedením odběru v&nbsp;prostorách laboratoře.</p></td></tr><tr><td><p>Význam</p></td><td><p>Neadresná objednávka laboratorních vyšetření využívá právo pacienta na svobodný výběr poskytovatele zdravotní péče, kdy si pacient sám zvolí laboratoř, která bude realizovat objednaná vyšetření. Použití je vhodné v&nbsp;případech vyšetření, u kterých neplyne riziko z nedostatečné standardizace vyšetření napříč laboratořemi a problematické porovnatelnosti výsledků. Této&nbsp;volbě by vždy měla předcházet konzultace s lékařem.</p><p>Uspořádání „laboratoř s odběrovým místem“ je u neadresných žádanek vhodná především pro případy málo stabilních analytů, kdy je nutné minimalizovat čas mezi odběrem a provedením vlastní laboratorní analýzy. Použije se v případě, že pacient na neadresnosti odběru a zpracování trvá a&nbsp;existuje vhodné pracoviště, které je schopno celý proces v požadované kvalitě zajistit.</p></td></tr><tr><td><p>Doména</p></td><td><p>Laboratoře</p></td></tr><tr><td><p>Rozsah</p></td><td><p>Národní/regionální/lokální</p></td></tr><tr><td><p>Kontext</p></td><td><p>V současné době se podstatná část objednávek laboratorních testů stále provádí prostřednictvím papírového objednávkového systému.</p><p>Některé nemocniční i ambulantní laboratoře umožňují kromě papírových žádanek také elektronické objednávání laboratorních vyšetření, založené na datovém standardu DASTA. Elektronické objednávkové systémy jsou integrovány do řady především nemocničních informačních systémů a do některých IS praktického lékaře. Některé laboratoře umožňují také objednávání pomocí specializovaných webových aplikací. Všechny existující objednávkové systémy jsou zatím navrženy tak, že je objednávka adresná – uživatel tedy provádí objednávku pouze na konkrétní laboratoř.</p><p>Žádný z těchto systémů aktuálně neumožňuje vytváření neadresné žádanky, a to především z důvodu chybějící infrastruktury umožňující vyhledání elektronické žádanky z libovolného odběrového místa zvoleného pacientem.</p></td></tr><tr><td><p>Informace</p></td><td><p>Laboratorní objednávka</p></td></tr><tr><td><p>Aktéři</p></td><td><ul><li>Viz sekce Společný aktéři</li></ul></td></tr><tr><td><p>Předpoklady</p></td><td><ul><li>Viz sekce Společné předpoklady</li></ul></td></tr><tr><td><p>Funkční popis procesu</p></td><td><ul><li>Viz sekce Funkční popis procesu – společné části</li></ul><p>Části, které jsou od společné části odlišné jsou uvedeny pod tabulkou v sekci Funkční popis procesu – část specifická pro use-case.</p></td></tr></tbody></table>

##### Funkční popis procesu – část specifická pro use-case

Příslušný use-case se od sekce Funkční popis procesu – společné části liší v následujících bodech:

3\. **Pacient vyhledá vhodné odběrové místo**

Pacient musí mít možnost pomocí služeb centrálního úložiště žádanek (nebo napojenou mobilní aplikací) vyhledat vhodnou laboratoř, která disponuje odběrovým místem. Je třeba v okolí, kde pacient bydlí (nebo se aktuálně nachází) najít dle požadovaných vyšetření laboratoř tak, aby byl zajištěn odběr všech potřebných biologických materiálů a současně stanovení potřebných parametrů.

Aby bylo možné vyhledání, musí laboratoř publikovat na centrálním úložišti žádanek elektronický katalog svých služeb, aby bylo možné dne zadaných kritérií (vzdálenost, pracovní doba, rychlost odbavení) pacientovi zobrazit pouze taková zařízení, která jsou schopny zajistit odběr a následnou analýzu dle specifikace uvedené v laboratorní žádance

#### **UC-04 Elektronická objednávka laboratorních vyšetření bez uvedení laboratoře (neadresná) s provedením odběru v prostorách odběrového místa**

<table><tbody><tr><th><p>Název</p></th><th><p>UC-04 Elektronická objednávka laboratorních vyšetření bez uvedení laboratoře (neadresná) s provedením odběru v prostorách odběrového místa</p></th></tr><tr><td><p>Účel</p></td><td><p>Poskytovatelé zdravotní péče, pacienti a další klienti zdravotních služeb žádají o laboratorní služby vytvořením objednávky laboratorního vyšetření se specifikací laboratorní služby, která má být poskytnuta. Tento případ užití popisuje proces neadresného elektronického objednávání laboratorních vyšetření (laboratoř bude vybrána později v&nbsp;pracovním postupu buď objednávajícím subjektem, nebo samotným pacientem či klientem) s provedením odběru v&nbsp;odběrném místě nacházejícím se mimo prostory žadatele.</p></td></tr><tr><td><p>Význam</p></td><td><p>Neadresná objednávka laboratorních vyšetření využívá právo pacienta na svobodný výběr poskytovatele zdravotní péče, kdy si pacient sám zvolí laboratoř, která bude realizovat objednaná vyšetření. Použití je vhodné v&nbsp;případech vyšetření, u kterých neplyne riziko z nedostatečné standardizace vyšetření napříč laboratořemi a problematické porovnatelnosti výsledků. Této volbě by vždy měla předcházet konzultace s lékařem.</p></td></tr><tr><td><p>Doména</p></td><td><p>Laboratoře</p></td></tr><tr><td><p>Rozsah</p></td><td><p>Národní/regionální/lokální</p></td></tr><tr><td><p>Kontext</p></td><td><p>V současné době se podstatná část objednávek laboratorních testů stále provádí prostřednictvím papírového objednávkového systému.</p><p>Některé nemocniční i ambulantní laboratoře umožňují kromě papírových žádanek také elektronické objednávání laboratorních vyšetření, založené na datovém standardu DASTA. Elektronické objednávkové systémy jsou integrovány do řady především nemocničních informačních systémů a do některých IS praktického lékaře. Některé laboratoře umožňují také objednávání pomocí specializovaných webových aplikací. Všechny existující objednávkové systémy jsou zatím navrženy tak, že je objednávka adresná – uživatel tedy provádí objednávku pouze na konkrétní laboratoř.</p><p>Žádný z těchto systémů ale aktuálně neumožňuje vytváření neadresné žádanky, a to především z důvodu chybějící infrastruktury umožňující vyhledání elektronické žádanky z libovolného odběrového místa zvoleného pacientem.</p></td></tr><tr><td><p>Informace</p></td><td><p>Laboratorní objednávka</p></td></tr><tr><td><p>Aktéři</p></td><td><ul><li>Viz sekce Společný aktéři</li></ul></td></tr><tr><td><p>Předpoklady</p></td><td><ul><li>Viz sekce Společné předpoklady</li></ul></td></tr><tr><td><p>Funkční popis procesu</p></td><td><ul><li>Viz sekce Funkční popis procesu – společné části</li></ul><p>Části, které jsou od společné části odlišné, jsou uvedeny pod tabulkou v sekci Funkční popis procesu – část specifická pro use-case.</p></td></tr></tbody></table>

##### Funkční popis procesu – část specifická pro use-case

Příslušný use-case se od sekce Funkční popis procesu – společné části liší v následujících bodech:

3\. **Pacient vyhledá vhodné odběrové místo**

Pacient musí mít možnost pomocí služeb centrálního úložiště žádanek (nebo napojenou mobilní aplikací) vyhledat vhodné odběrové místo. Je třeba v okolí, kde pacient bydlí (nebo se aktuálně nachází) najít dle požadovaných vyšetření odběrové místo spolupracující s laboratořemi tak, aby byl zajištěn odběr všech potřebných biologických materiálů a současně stanovení potřebných parametrů.

Mohou nastat dvě základní situace:

- odběrové centrum je samostatný subjekt, který zajišťuje pouze odběr materiálu a jeho transport do laboratoře
- odběrové centrum je součástí analytické laboratoře

V obou případech musí odběrová místa publikovat na centrálním úložišti žádanek elektronický katalog svých služeb, aby bylo možné dne zadaných kritérií (vzdálenost, pracovní doba, rychlost odbavení) pacientovi zobrazit pouze taková zařízení, která jsou schopny zajistit odběr a transport do laboratoře, která zajistí následnou analýzu dle specifikace uvedené v laboratorní žádance.

**Dodatek k uvedeným UC**

V praxi nastává řada dalších situací a jejich kombinací, jež nelze popisovat prostřednictvím základních UC (viz výše UC‑01 až UC-04), které musí být řešené operativně. Například konkrement odebraný pacientem může být zaslán bez ID vzorku do specializované laboratoře poštou po telefonické domluvě, nebo odběr materiálu může být realizován například o víkendu, materiál může být patřičně ošetřen a uložen v lednici a odeslán až v první pracovní den.

Jsou také možné situace, kdy je laboratoř žádána o realizaci dalších vyšetření s použitím dříve odebraných materiálů uložených dlouhodobě v laboratoři.

Další situace nastávají tam, kde dílčí vyšetření zajišťuje smluvní nebo referenční laboratoř atd.

Jiné speciální situace nastávají například v transfúzní medicíně, kde jsou společně s objednávkou laboratorních vyšetření zasílané také objednávky transfúzních přípravků (krev a krevní deriváty aj.).

Velmi speciální problematikou jsou problémově orientované žádosti zasílané mikrobiologickým laboratořím, kdy vedle formalizované objednávky na kultivační vyšetření může být připojena řada neformalizovaných dalších podmíněných požadavků a současně může být zaslána řada formalizovaných i neformalizovaných informací o pacientovi případně i o zasílaném vzorku. U těchto objednávek se navíc předpokládá i následný dialog mezi laboratoří a objednavatelem a následné další objednávky plynoucí z dílčích laboratorních výsledků, nebo z aktuálního klinického stavu pacienta.

Toto musí být operativně dořešeno dle vzniklých situací a oprávněných potřeb, a proto to není nyní předmětem řešení tohoto dokumentu.