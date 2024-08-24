//
//  SotrodargalView.swift
//  Tamiliva
//
//  Created by sanjithsethu on 20/1/22.
//

import SwiftUI

@available(iOS 16.0, *)
struct SotrodargalView: View {
    
    var Sections = [section(value: 0, name:"திருக்குறள்", img: "2"),section(value: 1, name:"ஆத்திச்சூடி", img: "3"),section(value: 2, name:"கொன்றை வேந்தன்", img: "1"),section(value: 4, name: "தமிழ் பழமொழிகள்", img: "7"),section(value: 3, name: "பாடல் வரிகள்", img: "5")]
    
    var phrases:[[Sotratargal]] =  [[Sotratargal(phrase: "செயற்கரிய செய்வார் பெரியர் சிறியர்\nசெயற்கரிய செய்கலா தார்", meaning: "செய்வதற்கு அருமையான செயல்களைச் செய்ய வல்லவரே பெரியோர். செய்வதற்கு அரிய செயல்களைச் செய்யமாட்டாதவர் சிறியோர்."), Sotratargal(phrase: "விசும்பின் துளிவீழின் அல்லால்மற்\nறாங்கே பசும்புல் தலைகாண்பு அரிது", meaning: "வானத்திலிருந்து மழைத்துளி வீழ்ந்தால் அல்லாமல், உலகத்தில் ஓரறிவுயிராகிய பசும்புல்லின் தலையையும் காண முடியாது."), Sotratargal(phrase: "எண்ணித் துணிக கருமம் துணிந்தபின்\nஎண்ணுவம் என்பது இழுக்கு", meaning:"(செய்யத் தகுந்த) செயலையும் வழிகளை எண்ணிய பிறகே துணிந்து தொடங்க வேண்டும். துணிந்தபின் எண்ணிப் பார்க்கலாம் என்பது குற்றமாகும்."), Sotratargal(phrase: "எப்பொருள் எத்தன்மைத் தாயினும் அப்பொருள்\nமெய்ப்பொருள் காண்பது அறிவு", meaning: "எப்பொருள் எத்தன்மையதாய்த் தோன்றினாலும் (அத் தோற்றத்தை மட்டும் கண்டு மயங்காமல்) அப்பொருளின் உண்மையான இயல்பை அறிவதே மெய்யுணர்வாகும்."), Sotratargal(phrase: "இயற்றலும் ஈட்டலும் காத்தலும் காத்த\nவகுத்தலும் வல்லது அரசு", meaning: "பொருள் வரும் வழிகளை மேன்மேலும் இயற்றலும், வந்த பொருள்களைச் சேர்த்தலும், காத்தலும், காத்தவற்றை வகுத்துச் செலவு செய்தலும் வல்லவன் அரசன். "), Sotratargal(phrase: "எண்ணென்ப ஏனை எழுத்தென்ப இவ்விரண்டும்\nகண்ணென்ப வாழும் உயிர்க்கு", meaning: "எண் என்று சொல்லப்படுவன, எழுத்து என்று சொல்லப்படுவன ஆகிய இருவகைக் கலைகளையும் வாழும் மக்களுக்குக் கண்கள் என்று கூறுவர்."), Sotratargal(phrase: "தொட்டனைத்து ஊறும் மணற்கேணி மாந்தர்க்குக்\nகற்றனைத் தூறும் அறிவு", meaning: "மணலில் உள்ள கேணியில் தோண்டிய அளவிற்கு நீர் ஊறும்; அதுபோல், மக்களுக்குக் கற்ற கல்வியின் அளவிற்கு அறிவு ஊறும்."), Sotratargal(phrase: "செல்வத்துள் செல்வம் செவிச்செல்வம் அச்செல்வம்\nசெல்வத்துள் எல்லாம் தலை", meaning: "செவியால் கேட்டறியும் செல்வம், செல்வங்களுள் ஒன்றாகப் போற்றப்படும் செல்வமாகும் அச் செல்வம்\nசெல்வங்கள் எல்லாவற்றிலும் தலையானதாகும்.")],[Sotratargal(phrase:"அறம் செய விரும்பு", meaning:"நல்ல செயல்கள் செய்ய ஆசை வேண்டும்"), Sotratargal(phrase:"ஆறுவது சினம்", meaning:"கோபத்தை குறைக்க வேண்டும் / கட்டுப்படுத்த வேண்டும்"), Sotratargal(phrase:"இயல்வது கரவேல்", meaning:"உங்களால் முடிந்த அளவிற்கு உதவுங்கள்"), Sotratargal(phrase:"ஈவது விலக்கேல்", meaning:"தொண்டு செய்வதை நிறுத்தாதீர்கள்"), Sotratargal(phrase:"உடையது விளம்பேல்", meaning:"உங்கள் உடைமையைப் பற்றி பெருமை கொள்ளாதீர்கள்"), Sotratargal(phrase:"ஊக்கமது கைவிடேல்", meaning:"நம்பிக்கை/தன்னம்பிக்கையை கைவிடாதீர்கள்"), Sotratargal(phrase:"எண் எழுத்து இகழேல்", meaning:"கற்றலின் ஆற்றலை குறைத்து மதிப்பிடாதீர்கள்"), Sotratargal(phrase:"ஏற்பது இகழ்ச்சி", meaning:"பிச்சை எடுப்பது வெட்கக்கேடான செயல்"), Sotratargal(phrase:"ஐயமிட்டு உண்", meaning:"சாப்பிடுவதற்கு முன், உணவைத் தேவைப்படுபவர்களுடன் பகிர்ந்து கொள்ளுங்கள்"), Sotratargal(phrase:"ஒப்புர வொழுகு", meaning:"உலக போக்கிற்கு எற்றவாறு நடந்து கொள்ள வேண்டும்."), Sotratargal(phrase:"ஓதுவது ஒழியேல்", meaning:"நூல்களைக் கற்பதை நிறுத்தி விடாதே"), Sotratargal(phrase:"ஓளவியம் பேசேல்", meaning:"பொறாமை மொழிகளைப் பேசுதலை ஒழிப்பாயாக!")],[Sotratargal(phrase:"அன்னையும் பிதாவும் முன்னறி தெய்வம்", meaning:"தாய், தந்தையர் கண்கண்ட தெய்வம்"), Sotratargal(phrase:"எண்ணும் எழுத்தும் கண்ணெனத் தகும்", meaning:"அறிவியலுக்கு ஆதாரமான எண்ணும், இலக்கிய அறிவுக்கு ஆதாரமான எழுத்தும் நமக்குக் கண் போன்றவை"), Sotratargal(phrase:"கைப்பொருள் தன்னில் மெய்ப்பொருள் கல்வி", meaning:"கையில் இருக்கும் பொருளை விட உண்மையான செல்வம் கல்வியே ஆகும்"), Sotratargal(phrase:"தேடாது அழிக்கின் பாடாய் முடியும்", meaning:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்"), Sotratargal(phrase:"நல்இணக்கம் அல்லது அல்லல் படுத்தும்", meaning:"நல்லோர் நட்பு இல்லையேல், அல்லல் படுவோம்")],[Sotratargal(phrase:"ஒவ்வொரு பூக்களுமே", meaning:"ஒவ்வொரு பூக்களுமே சொல்கிறதே வாழ்வென்றால் போராடும் போர்களமே\n ஒவ்வொரு விடியலுமே.. சொல்கிறதே இரவானால் பகல் ஒன்று வந்திடுமே \n\n நம்பிக்கை என்பது வேண்டும் நம் வாழ்வில் \n லட்சியம் நிச்சயம் வெல்லும் ஒரு நாளில்\nஉழி தாங்கும் கற்கள் தானே மண்மீது சிலையாகும் \nவலி தாங்கும் உள்ளம் தானே நிலையான சுகம் காணும்\n\nஒரு கனவு கண்டால் அதை தினம்முயின்றால் ஒரு நாளில் நிஜமாகும் "), Sotratargal(phrase:"யூத் - சந்தோசம் சந்தோசம்", meaning:"சந்தோசம் சந்தோசம் வாழ்க்கையின் பாதி பலம்\nசந்தோசம் இல்லையேன்றால் மனிதர்க்கு ஏதுபலம் \n\nபுயல் மையம் கொண்டால் மழை மண்ணில் உண்டு\nஎந்த தீமைக்குள்ளும் சிறு நன்மையுண்டு \n\nஉள்ளம் என்பது கவலைகள் நிரப்பும் குப்பைத் தொட்டியில்லை \nஉள்ளம் என்பது பூந்தோட்டியானால் நாளை துன்பமில்லை \n\nஆதியில் ஆண்டவன் இந்த பூமியைப் படைத்தானே \nஅவன் ஆசையைப் போலவே இந்த பூமி அமையலையே\nஆண்டவன் ஆசையே இங்கே பொய்யாய் போய்விடில்\nமனிதனின் ஆசைகள் மெய்யாவது சாத்தியமா"), Sotratargal(phrase:"நெஞ்சம் உண்டு, நேர்மை உண்டு, ஓடு ராஜா", meaning:"நெஞ்சம் உண்டு, நேர்மை உண்டு, ஓடு ராஜா \nநேரம் வரும் காத்திருந்து பாரு ராஜா\nஅஞ்சி அஞ்சி வாழ்ந்தது போதும் ராஜா\nநீ ஆற்று வெள்ளம் போல் எழுந்து ஓடு ராஜா\n\nஅடிமையின் உடம்பில் ரத்தம் எதற்கு?\nதினம் அச்சப்பட்ட கோழைக்கு இல்லம் எதற்கு?\nகொடுமையைக் கண்டு கண்டு பயம் எதற்கு?\nநீ கொண்டு வந்தது என்னடா?, மீசை முறுக்கு !"), Sotratargal(phrase:"ஒரு கூட்டு கிளியாக", meaning:"செல்லும் வழியெங்கும் பள்ளம் வரலாம்\nஉள்ளம் எதிர்பாராமல் வெள்ளம் வரலாம்\nநேர்மை அது மாறாமல் தர்மம் அதை மீறாமல்\nநாளும் நடை போடுங்கள் ஞானம் பெறலாம்\n\nசத்தியதை நீங்கள் காத்திருந்தால்\nசத்தியம் உங்களை காத்திருக்கும் \n\nநெல்லின் விதை போடாமல் நெல்லும் வருமா\nவேர்வை அது சிந்தாமல் வெள்ளி பணமா \n\nபேருக்கு வாழ்வது வாழ்கை இல்லை\nஊருக்கு வாழ்வதில் தோல்வி இல்லை"), Sotratargal(phrase:"திருடாதே... பாப்பா திருடாதே", meaning:"வறுமை நிலைக்கு பயந்துவிடாதே\nதிறமை இருக்கு மறந்துவிடாதே\n\nசிந்தித்து பார்த்து செய்கையை மாத்து \nசிறுசாய் இருக்கையில் திருத்திக்கோ\nதெரிஞ்சும் தெரியாம நடந்திருந்தா\nஅது திரும்பவும் வராம பாத்துக்கோ \n\nதிருடராய் பார்த்து திருந்தாவிட்டால் \nதிருட்டை ஒழிக்க முடியாது \n\nஉழைக்கிற நோக்கம் உறுதி ஆயிட்டா \nகெடுக்குற நோக்கம் வளராது\nமனம் கீழும் மேலும் புரளாது")],[Sotratargal(phrase:"அகத்தின் அழகு முகத்தில் தெரியும்", meaning:""), Sotratargal(phrase:" அளவுக்கு மிஞ்சினால் அமுதமும் நஞ்சு", meaning:""), Sotratargal(phrase:" அன்பான நண்பனை ஆபத்தில் அறியலாம்", meaning:""), Sotratargal(phrase:" ஆத்திரக்காரனுக்குப் புத்தி மட்டு", meaning:""), Sotratargal(phrase:" ஆழம் அறியாமல் காலை இடாதே", meaning:""), Sotratargal(phrase:" ஆனைக்கும் அடி சறுக்கும்", meaning:""), Sotratargal(phrase:" இளமையில் சோம்பல், முதுமையில் வறுமை", meaning:""), Sotratargal(phrase:" எறும்பு ஊரக் கல்லும் தேயும்", meaning:"கடின உழைப்பால் எதுவும் சாத்தியம்"), Sotratargal(phrase:" ஐந்திலே வளையாதது ஐம்பதிலே வளையுமா?", meaning:""), Sotratargal(phrase:" ஒன்றுப்பட்டால் உண்டு வாழ்வு", meaning:""), Sotratargal(phrase:" அடாது செய்பவர் படாது படுவர்", meaning:""), Sotratargal(phrase:" அன்பிருந்தால் ஆகாததும் ஆகும்", meaning:""), Sotratargal(phrase:" இளமையில் கல்வி சிலையில் எழுத்து", meaning:""), Sotratargal(phrase:" உடையவன் பாராத வேலை ஒரு முழம் கட்டை", meaning:""), Sotratargal(phrase:" உப்பிட்டவரை உள்ளளவும் நினை", meaning:""), Sotratargal(phrase:" எரிகிற விளக்கானாலும் தூண்டுகோல் வேண்டும்", meaning:""), Sotratargal(phrase:" ஒருவர் பொறை இருவர் நட்பு", meaning:""), Sotratargal(phrase:" கற்றது கைமண்ணளவு, கல்லாதது உலகளவு", meaning:""), Sotratargal(phrase:" காற்றுள்ளபோதே தூற்றிக் கொள்", meaning:""), Sotratargal(phrase:" சிறு துரும்பும் பல் குத்த உதவும்", meaning:""), Sotratargal(phrase:" தன் கையே தனக்கு உதவி", meaning:""), Sotratargal(phrase:" நல்லவன் என்று பெயர் எடுக்க நாள் செல்லும்", meaning:""), Sotratargal(phrase:" நிழலின் அருமை வெயிலில் தெரியும்", meaning:""), Sotratargal(phrase:" நிறைகுடம் நீர் தளும்பாது", meaning:""), Sotratargal(phrase:" ஒரு கை தட்டினால் ஓசை வருமா?", meaning:""), Sotratargal(phrase:" கெடுவான் கேடு நினைப்பான்", meaning:""), Sotratargal(phrase:" சிறு துளி பெரு வெள்ளம்", meaning:""), Sotratargal(phrase:" கரைப்பார் கரைத்தால் கல்லும் கரையும்", meaning:""), Sotratargal(phrase:" நோயற்ற வாழ்வே குறைவற்ற செல்வம்", meaning:""), Sotratargal(phrase:" பகுத்தறியாமல் துணியாதே", meaning:""), Sotratargal(phrase:" பதறாத காரியம் சிதறாது", meaning:""), Sotratargal(phrase:" புத்திமான் பலவான் ஆவான் ", meaning:""), Sotratargal(phrase:" பொறுத்தார் பூமி ஆள்வார்", meaning:""), Sotratargal(phrase:" மனம் உண்டானால் வழி உண்டாகும்", meaning:""), Sotratargal(phrase:" மின்னுவதெல்லாம் பொன் அல்ல", meaning:""), Sotratargal(phrase:" முதல் கோணல் முற்றும் கோணல்", meaning:""), Sotratargal(phrase:" முயற்சி உடையார் இகழ்ச்சி அடையார்", meaning:""), Sotratargal(phrase:" வல்லவனுக்குப் புல்லும் ஆயுதம்", meaning:""), Sotratargal(phrase:" வெள்ளம் வரும் முன் அணை கோல வேண்டும்", meaning:"")]]
    
    @available(iOS 16.0, *)
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationView {
                VStack{
                    
                    
                    List(Sections,id:\.self){Thing in
                        NavigationLink(destination: PhraseView(value: Thing.value,title: Thing.name)) {
                            HStack{
                                Image(Thing.img)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 95, height: 80, alignment: .center)
                                
                                Text(Thing.name)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                            }
                        }
                        .listRowBackground(Color(hue: 0.581, saturation: 0.059, brightness: 1))
                    }
                    .scrollContentBackground(.hidden)
                }
                .navigationTitle("Sotrodargal")
            }
            .navigationViewStyle(DefaultNavigationViewStyle())
            
        }
        else {
            NavigationView {
                VStack{
                    
                    
                    List(Sections,id:\.self){Thing in
                        NavigationLink(destination: PhraseView(value: Thing.value,title: Thing.name)) {
                            HStack{
                                Image(Thing.img)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 95, height: 80, alignment: .center)
                                
                                Text(Thing.name)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                            }
                        }
                        .listRowBackground(Color(hue: 0.581, saturation: 0.059, brightness: 1))
                    }
                    
                }
                .navigationTitle("Sotrodargal")
            }
            .navigationViewStyle(DefaultNavigationViewStyle())
        }
    }
}




struct SotrodargalView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            SotrodargalView()
        } else {
            SotrodargalFor15View()
        }
    }
}
