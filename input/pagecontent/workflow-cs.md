# Funkční popis procesu – společné části

Následující body funkčního popisu procesu jsou společné všem uvedeným use-case.  
V případě, že je některý use-case v některém z bodů specifický, tak jsou odlišnosti uvedeny u příslušného use-case.

## 1. Oprávněný žadatel provede objednání laboratorních vyšetření

V případě adresné objednávky umožní objednávkový systém volbu cílové laboratoře a jednotlivých testů či skupin testů dle nabídky cílové laboratoře.  
U objednávek neadresných laboratoř není zvolena a jsou objednána jen vyšetření.

Žadatel může vybírat z palety testů jak bez specifikace metody měření, tak včetně možnosti specifikace metody měření (fyzikálního principu měření).  
Objednávkový systém by měl umožnit volbu zobrazení názvů laboratorních testů. Tzn., že umožní zobrazit jak standardní názvy testů dle národního číselníku (NČLP), tak v případě adresné žádanky také konvenční názvy testů používané zvolenou laboratoří.  

Žadatel do objednávky uvede, v jakém časovém rozpětí má být objednávka realizována.  
Volitelně může objednávkový systém zobrazit repetitorium daného testu např. odkazem do příslušné Laboratorní příručky.  

Objednávkový systém by měl v případě potřeby umožnit zadat, se kterým dalším subjektem/-ty mají být výsledky stanovení sdíleny (např. praktický lékař sdílí výsledky se specializovaným pracovištěm, které má pacienta v pravidelné péči a naopak).  

Elektronická žádanka vytvořená na základě objednaných vyšetření je uložena v systému elektronických žádanek.

## 2. Systém elektronické žádanky přidělí žádance jednoznačný identifikátor

Identifikátor žádanky musí být globálně unikátní, může být generován například v podobě UUID (globálně unikátní 128bitový identifikátor).  
Za unikátnost identifikátoru zodpovídá žadatel o vyšetření. Přidělené ID objednávky bude nedílně spojeno se žádankou, bude použito při sdělování výsledků i při řešení akceptací či dalších akcích.

U neadresních objednávek je elektronická žádanka uložena v systému elektronických žádanek žadatele a také v externím centrálním úložišti žádanek.

## 3. Žadatel určí způsob a místo odběru vzorku

Průběh procesu se liší v závislosti na tom, zda k odběru dojde přímo v prostorách žadatele, nebo v prostorách odběrového místa. Tyto rozdíly jsou popsány přímo u jednotlivých use-case.

Ve všech případech musí být pacient informován o podmínkách odběru: např. nutnosti dostavit se k odběru nalačno, vysadit v den odběru vybrané léky, zdržet se před odběrem pohlavního styku, fyzické námahy, dodržovat určenou dietu apod.  
V případě odběru vzorku samotným pacientem je informován o způsobu tohoto odběru.

## 4. Pacient se dostaví na odběrové místo

V případě adresné objednávky a odběru v prostorách žadatele, kdy je ale odběr realizován jindy nebo jinde než bezprostředně v místě vzniku žádanky, se pacient v určeném čase dostaví na toto odběrové místo a dostatečným způsobem prokáže svoji identitu.  

V případě realizace odběru v místě vzniku objednávky se bod 5 nerealizuje a body 6 a 7 proběhnou u žadatele bezprostředně po vystavení elektronické žádanky.

V případě adresné objednávky s odběrem uskutečněným v odběrném místě a v případě objednávky neadresné se pacient v určeném čase dostaví na toto místo, prokáže se unikátním identifikátorem žádanky a dostatečným způsobem prokáže svou identitu.  

V obou případech případně předá svépomocí odebraný vzorek či vzorky (např. moč, stolice apod.) dle instrukcí žadatele.

## 5. Odběrové místo vyhledá elektronickou žádanku vyšetření

Pracovník odběrového místa na základě identity pacienta / unikátního identifikátoru osoby nebo žádanky vyhledá v systému elektronických žádanek příslušnou žádanku, zkontroluje, zda identifikační údaje pacienta odpovídají osobě, která bude odebírána, a případně převezme vzorek či vzorky od pacienta.  

Systém následně zaeviduje vyzvednutí žádanky provádějícím pracovištěm a informuje o tomto stavu dle domluvených pravidel odesílatele žádanky.  

V případě problému (neúplná, chybná žádanka, nevyzvednutí do stanovené doby) informuje žadatele a ten řeší další osud žádanky.

## 6. Zdravotník odběrového místa označí odběrové nádoby identifikátorem

Informační systém odběrového místa přidělí každé odběrové nádobě s biologickým materiálem unikátní identifikátor a tento identifikátor se připevní k odběrové nádobě.  

Identifikátor musí být unikátní minimálně v rámci informačního systému odběrového místa, doporučujeme ale, aby byl globálně unikátní.  

Identifikační štítky mohou být na odběrové nádoby připevněny v podobě strojově čitelných čárových kódů, 2D kódů nebo RFID tagů, vždy společně s čitelným označením.

Viz: *Sekce 2.4.6 Identifikace odebraných zkumavek.*

## 7. Zdravotník odběrového místa provede odběr vzorku

Zdravotník provede odběr vzorku dle požadovaných laboratorních vyšetření, a to způsobem odpovídajícím odebíranému materiálu a podmínkám tzv. preanalytické fáze pro daný typ materiálu a požadovaným vyšetřením (za použití stanoveného postupu odběru, vhodných odběrových nádob, způsobu skladování a transportu vzorků apod.).  

Zdravotník aktualizuje okamžik odběru biologických materiálů v informačním systému elektronické žádanky a doplní další nutné údaje v závislosti na povaze objednaných vyšetření (poloha při odběru, dobu sběru moče, dávkování léků, fáze menstruačního cyklu, lokaci mikrobiologického odběru apod.).  

Informace o aktualizované objednávce budou předány buď přes zabezpečený komunikační kanál elektronicky do cílové laboratoře, nebo přes systém centrálního úložiště.  

Přímo s materiálem by měla minimálně po přechodné období být do laboratoře zaslána i papírová průvodka (umožňující kontrolu, případně usnadňující řešení problematických situací).

## 8. Odběrové místo informuje žadatele a případně i centrální úložiště žádanek o odběru

V případě odběru na odběrovém místě toto místo posílá žadateli zabezpečeným komunikačním kanálem elektronickou zprávu o realizovaném odběru, odebraných biologických materiálech a jejich identifikacích, případně o zahájení transportu do laboratoře.  

Při využití centrálního úložiště (zejména u neadresných žádanek) odešle informaci o odběru také na centrální úložiště.

## 9. Laboratorní vzorek a žádanka jsou předány cílové laboratoři

Pracovník odběrového místa zaeviduje v systému elektronické žádanky čas zahájení transportu do laboratoře.  
Je nutné dodržet podmínky transportu dle doporučení laboratoře, které jsou uváděné zpravidla v Laboratorní příručce.  
Je třeba dbát mimo jiné na:

- dobu transportu nestabilních analytů  
- dodržení předepsané teploty transportu v závislosti na povaze analytu/-ů  
- případnou monitoraci teploty v průběhu transportu na delší vzdálenosti  
- vyloučení vzorků z transportu potrubní poštou  
- vyloučení chlazení vzorků v průběhu transportu  
- chránění před světlem  

## 10. Laboratoř převezme vzorek a na základě elektronické žádanky provede požadovaná vyšetření

Laboratoř převezme vzorek a elektronicky, přes zabezpečený komunikační kanál nebo systém centrálního úložiště, také elektronickou žádanku.

Laboratoř při přejímání vzorků zkontroluje, zda jsou všechny obaly dodaných biologických materiálů řádně označeny. Případné neoznačené nebo biologicky kontaminované obaly nepřijímá.  
Dále se kontroluje dostatečné množství materiálu, zda je ve správných odběrových systémech a zda byly dodrženy podmínky transportu.  
Zaznamená čas doručení.

Doporučuje se, aby součástí přijímací procedury bylo i elektronické potvrzení přijetí / přijetí s eventuálním uvedením kolizí / nepřijetí materiálu žadateli (akceptace).  

Pokud bylo odběrové místo samostatným subjektem, měla by se stejná potvrzující zpráva (akceptace) poslat i tam.

## 11. Systém elektronické žádanky by měl disponovat kromě jiného:

- **Možností doobjednání vyšetření z odebraného materiálu.**  
  Do cílové laboratoře pak žadatel posílá identifikaci původní žádanky, identifikaci doobjednaného vyšetření, případně identifikace odběrové nádoby, ze které má být vyšetření stanoveno.  
  Laboratoř musí disponovat systémem detekce doobjednávek.  
  Na základě interních pravidel (stabilita a množství biologického materiálu) vyhodnotí možnost doobjednávce vyhovět a elektronicky o této skutečnosti žadatele vyrozumí.

- **Možností stornování objednávky**, za předpokladu, že je stornování požadováno v patřičné fázi zpracovávání.

- **Možností řešení kolizí různého typu, zejména například:**
  - nesprávné, chybějící nebo nedostatečně uvedené informace (o vzorku, pacientovi aj.)
  - chyby při procesu odběru a transportu (nesprávný odběr, příliš dlouhá doba transportu, transport při nevyhovující teplotě aj.)
  - nedodání nebo dodání nedostatečného množství materiálu, dodání materiálu nevyhovující kvality (sraženo aj.)
  - nemožnost stanovení v laboratoři (laboratoř příslušný analyt dočasně nebo trvale nestanovuje, nebo analyt nestanovuje v daném režimu – statim apod.)
  - chyby vzniklé při manipulaci a zpracování vzorku v laboratoři (kontaminace, rozbití nebo rozlití vzorku aj.)

- **Objednávkový systém** by měl disponovat možností poskytovat akceptace různého druhu (požadavků, storna, doplňků aj.).
