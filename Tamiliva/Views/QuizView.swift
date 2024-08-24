//
//  QuizView.swift
//  Tamiliva
//
//  Created by Tanish Jayachandran on 15/3/22.
//

import SwiftUI

var questions:[Qn] = [Qn(query:"அவள் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"she", Answer2:"rice flake", Answer3:"moment", Wrong: false), Qn(query:"அழகு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"beauty", Answer2:"beak", Answer3:"wave", Wrong: false), Qn(query:"அலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"wave", Answer2:"invite", Answer3:"leaf", Wrong: false), Qn(query:"அறிவாள் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"she knows", Answer2:"sickle", Answer3:"deer", Wrong: false), Qn(query:"அறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"grind, room, slap", Answer2:"half", Answer3:"beg", Wrong: false), Qn(query:"அன்னம்  என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"swan, food", Answer2:"palate", Answer3:"backyard", Wrong: false), Qn(query:"அறம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"Morally right things", Answer2:"file", Answer3:"pity", Wrong: false), Qn(query:"அள்ளி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"scoop", Answer2:"Lilly", Answer3:"decoration", Wrong: false), Qn(query:"அளி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"give", Answer2:"erase, destroy", Answer3:"mash", Wrong: false), Qn(query:"அக்கறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"concern", Answer2:"riverbank", Answer3:"fertiliser", Wrong: false), Qn(query:"அனைத்து என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"all", Answer2:"hug", Answer3:"home, land", Wrong: false), Qn(query:"அருந்து என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"drink", Answer2:"break", Answer3:"school", Wrong: false), Qn(query:"ஆள் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"man", Answer2:"deep", Answer3:"beg", Wrong: false), Qn(query:"ஆணி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"nail", Answer2:"Tamil month", Answer3:"curry", Wrong: false), Qn(query:"இறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"prayer", Answer2:"prey", Answer3:"mangal sutra", Wrong: false), Qn(query:"இரந்து என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"beg", Answer2:"dead", Answer3:"block", Wrong: false), Qn(query:"இலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"leaf", Answer2:"lose weight", Answer3:"wear", Wrong: false), Qn(query:"இரங்கு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"pity", Answer2:"alight", Answer3:"cold", Wrong: false), Qn(query:"உன் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"your", Answer2:"eat", Answer3:"length", Wrong: false), Qn(query:"உரம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"fertiliser", Answer2:"strong", Answer3:"desire", Wrong: false), Qn(query:"உறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"Envelope", Answer2:"speech", Answer3:"stain", Wrong: false), Qn(query:"உரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"strip off", Answer2:"sling, suck", Answer3:"bridge", Wrong: false), Qn(query:"உலவு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"Browse", Answer2:"spy", Answer3:"hill", Wrong: false), Qn(query:"ஊன் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"meat", Answer2:"food", Answer3:"sky", Wrong: false), Qn(query:"என்ன என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"what", Answer2:"count, thought", Answer3:"spring, rise", Wrong: false), Qn(query:"எரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"burn", Answer2:"throw", Answer3:"ceiling", Wrong: false), Qn(query:"எண்பது என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"eighty", Answer2:"means", Answer3:"school", Wrong: false), Qn(query:"எழும்பு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"spring, rise", Answer2:"bone", Answer3:"sky", Wrong: false), Qn(query:"ஏரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"lake", Answer2:"climb", Answer3:"tired", Wrong: false), Qn(query:"ஒழி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"destroy", Answer2:"light", Answer3:"ceiling", Wrong: false), Qn(query:"கள் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"toddy (alcohol drink )", Answer2:"stone", Answer3:"all", Wrong: false), Qn(query:"கறி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"curry", Answer2:"charcoal", Answer3:"lonely", Wrong: false), Qn(query:"கழகம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"association", Answer2:"riot", Answer3:"block", Wrong: false), Qn(query:"கனி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"fruit", Answer2:"calculate", Answer3:"roast", Wrong: false), Qn(query:"கன்னி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"Virgo", Answer2:"trap", Answer3:"parrot", Wrong: false), Qn(query:"கழி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"pole", Answer2:"rejoice", Answer3:"scoop", Wrong: false), Qn(query:"கறுத்து என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"black", Answer2:"opinion, point", Answer3:"desire", Wrong: false), Qn(query:"கணம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"moment", Answer2:"weight", Answer3:"drink", Wrong: false), Qn(query:"கறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"stain", Answer2:"bank", Answer3:"concern", Wrong: false), Qn(query:"கணை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"arrow", Answer2:"roar", Answer3:"backyard", Wrong: false), Qn(query:"களை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"weed", Answer2:"art", Answer3:"cold", Wrong: false), Qn(query:"களைத்தல் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"tired", Answer2:"disband", Answer3:"tiger", Wrong: false), Qn(query:"காலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"morning", Answer2:"bull", Answer3:"decoration", Wrong: false), Qn(query:"கிளி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"parrot", Answer2:"fear", Answer3:"mongoose", Wrong: false), Qn(query:"கிளவி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"word", Answer2:"old woman", Answer3:"banana", Wrong: false), Qn(query:"கீரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"mongoose", Answer2:"scratch", Answer3:"mercy", Wrong: false), Qn(query:"குளம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"pond", Answer2:"race", Answer3:"bridge", Wrong: false), Qn(query:"குரல் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"tone", Answer2:"Thirukkral", Answer3:"tired", Wrong: false), Qn(query:"குளவி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"wasp", Answer2:"infant", Answer3:"call", Wrong: false), Qn(query:"குழம்பு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"curry", Answer2:"hoof of an animal", Answer3:"crawl", Wrong: false), Qn(query:"குழி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"pit", Answer2:"bathe", Answer3:"marble", Wrong: false), Qn(query:"குழை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"mash", Answer2:"disband, bunch", Answer3:"prosper", Wrong: false), Qn(query:"குறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"decrease,reduce,shortcoming", Answer2:"bark", Answer3:"mangal sutra", Wrong: false), Qn(query:"கூரை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"ceiling", Answer2:"clothes", Answer3:"stain", Wrong: false), Qn(query:"கூரிய என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"sharp", Answer2:"told", Answer3:"sky", Wrong: false), Qn(query:"கொல்லும் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"fatal", Answer2:"adapt", Answer3:"tone", Wrong: false), Qn(query:"கொல்லை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"backyard", Answer2:"robbery", Answer3:"all", Wrong: false), Qn(query:"கோல் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"rod", Answer2:"planet", Answer3:"desire", Wrong: false), Qn(query:"கோலம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"decoration", Answer2:"sphere", Answer3:"desire", Wrong: false), Qn(query:"கோலி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"marble", Answer2:"chicken", Answer3:"length", Wrong: false), Qn(query:"சளி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"cold", Answer2:"dejected", Answer3:"curry", Wrong: false), Qn(query:"சிரை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"vein", Answer2:"jail", Answer3:"wasp", Wrong: false), Qn(query:"சொறி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"scratch", Answer2:"pour", Answer3:"meat", Wrong: false), Qn(query:"சோளம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"millet", Answer2:"ancient kingdom, the Chola kingdom", Answer3:"Virgo", Wrong: false), Qn(query:"தண்மை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"kindness", Answer2:"quality", Answer3:"curry", Wrong: false), Qn(query:"தலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"head", Answer2:"sprout", Answer3:"job", Wrong: false), Qn(query:"தனி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"lonely", Answer2:"extinguise", Answer3:"desire", Wrong: false), Qn(query:"தரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"wear", Answer2:"cut off", Answer3:"huge", Wrong: false), Qn(query:"தாள் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"paper", Answer2:"latch", Answer3:"decrease,reduce,shortcoming", Wrong: false), Qn(query:"தாலி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"mangal sutra", Answer2:"big pot", Answer3:"corner", Wrong: false), Qn(query:"துறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"department", Answer2:"leader", Answer3:"eighty", Wrong: false), Qn(query:"தோல் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"skin", Answer2:"shoulder", Answer3:"pit", Wrong: false), Qn(query:"திறை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"tax", Answer2:"curtain", Answer3:"give", Wrong: false), Qn(query:"நீளம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"length", Answer2:"blue", Answer3:"association", Wrong: false), Qn(query:"பறி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"pluck", Answer2:"horse", Answer3:"tired", Wrong: false), Qn(query:"பணி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"job", Answer2:"dew", Answer3:"home, land", Wrong: false), Qn(query:"பறந்த என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"fly", Answer2:"broad", Answer3:"sword", Wrong: false), Qn(query:"பள்ளி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"school", Answer2:"lizard", Answer3:"revenge", Wrong: false), Qn(query:"பழி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"revenge", Answer2:"sacrifice", Answer3:"path", Wrong: false), Qn(query:"பாலம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"bridge", Answer2:"flattened shape", Answer3:"curry", Wrong: false), Qn(query:"பால் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"milk", Answer2:"ruin", Answer3:"job", Wrong: false), Qn(query:"புலி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"tiger", Answer2:"tamarind", Answer3:"spring, rise", Wrong: false), Qn(query:"பினை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"mix", Answer2:"bail", Answer3:"association", Wrong: false), Qn(query:"பெரும் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"huge", Answer2:"receive", Answer3:"kindness", Wrong: false), Qn(query:"போளி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"dessert", Answer2:"duplicate", Answer3:"revenge", Wrong: false), Qn(query:"பொரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"roast", Answer2:"engrave, machine", Answer3:"ribs", Wrong: false), Qn(query:"பேண் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"sustain", Answer2:"head lice", Answer3:"Browse", Wrong: false), Qn(query:"மறித்து என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"block", Answer2:"dead", Answer3:"job", Wrong: false), Qn(query:"மனை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"home, land", Answer2:"wooden seat", Answer3:"banana", Wrong: false), Qn(query:"மலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"hill", Answer2:"rain", Answer3:"mash", Wrong: false), Qn(query:"மாரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"rain", Answer2:"alternate, change", Answer3:"fruit", Wrong: false), Qn(query:"மான் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"deer", Answer2:"pride", Answer3:"wear", Wrong: false), Qn(query:"முன்னால் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"front", Answer2:"ex, ago", Answer3:"fertiliser", Wrong: false), Qn(query:"மூலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"corner", Answer2:"brain", Answer3:"dead", Wrong: false), Qn(query:"வழி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"path", Answer2:"pain", Answer3:"rod", Wrong: false), Qn(query:"வழு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"defect", Answer2:"strenth", Answer3:"school", Wrong: false), Qn(query:"வலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"net", Answer2:"bend", Answer3:"home, land", Wrong: false), Qn(query:"வாழை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"banana", Answer2:"fish", Answer3:"sky", Wrong: false), Qn(query:"வாள் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"sword", Answer2:"tail", Answer3:"meat", Wrong: false), Qn(query:"வாழி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"prosper", Answer2:"bucket", Answer3:"school", Wrong: false), Qn(query:"வானம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"sky", Answer2:"rocket", Answer3:"front", Wrong: false), Qn(query:"விளக்கு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"lamp, explain", Answer2:"exempt, avoid", Answer3:"black", Wrong: false), Qn(query:"விளக்கினார் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"explain", Answer2:"withdraw, exclude", Answer3:"tired", Wrong: false), Qn(query:"விலா என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"ribs", Answer2:"festival", Answer3:"twist", Wrong: false), Qn(query:"விழை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"desire", Answer2:"cultivate", Answer3:"beg", Wrong: false), Qn(query:"விளி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"call", Answer2:"awake", Answer3:"strip off", Wrong: false), Qn(query:"விளங்கு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"hand cuff", Answer2:"animal", Answer3:"zoo", Wrong: false), Qn(query:"வெல்லம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"jaggery", Answer2:"flood", Answer3:"decrease,reduce,shortcoming", Wrong: false), Qn(query:"வேலை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"job", Answer2:"during, day", Answer3:"school", Wrong: false), Qn(query:"களித்து என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"happy", Answer2:"excrete", Answer3:"lamp, explain", Wrong: false), Qn(query:"விழைவு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"desire", Answer2:"effect", Answer3:"wasp", Wrong: false), Qn(query:"அரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"cut", Answer2:"learn", Answer3:"give", Wrong: false), Qn(query:"பரவை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"exapnse, sea", Answer2:"bird", Answer3:"ribs", Wrong: false), Qn(query:"மரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"dead", Answer2:"block", Answer3:"grind, room, slap", Wrong: false), Qn(query:"ஊர என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"crawl", Answer2:"soak", Answer3:"tiger", Wrong: false), Qn(query:"முறுக்கு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"twist", Answer2:"snack", Answer3:"tone", Wrong: false), Qn(query:"இரக்கம் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"mercy", Answer2:"descent", Answer3:"meat", Wrong: false), Qn(query:"மரை என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"elk", Answer2:"conceal", Answer3:"concern", Wrong: false), Qn(query:"அலரி என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"plant", Answer2:"cry", Answer3:"vein", Wrong: false), Qn(query:"அரிய என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"rare", Answer2:"to know", Answer3:"wasp", Wrong: false),Qn(query:"செயற்கரிய செய்வார் பெரியர் சிறியர் செயற்கரிய செய்கலா தார் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"செய்வதற்கு அருமையான செயல்களைச் செய்ய வல்லவரே பெரியோர் செய்வதற்கு அரிய செயல்களைச் செய்யமாட்டாதவர் சிறியோர்", Answer2:"மணலில் உள்ள கேணியில் தோண்டிய அளவிற்கு நீர் ஊறும்; அதுபோல், மக்களுக்குக் கற்ற கல்வியின் அளவிற்கு அறிவு ஊறும்", Answer3:"பொருள் வரும் வழிகளை மேன்மேலும் இயற்றலும், வந்த பொருள்களைச் சேர்த்தலும், காத்தலும், காத்தவற்றை வகுத்துச் செலவு செய்தலும் வல்லவன் அரசன் " , Wrong: false),Qn(query:"விசும்பின் துளி வீழின் அல்லால்மற் றாங்கே பசும்புல் தலைகாண்பு அரிது என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"வானத்திலிருந்து மழைத்துளி வீழ்ந்தால் அல்லாமல், உலகத்தில் ஓரறிவுயிராகிய பசும்புல்லின் தலையையும் காண முடியாது", Answer2:"அறிவியலுக்கு ஆதாரமான எண்ணும், இலக்கிய அறிவுக்கு ஆதாரமான எழுத்தும் நமக்குக் கண் போன்றவை", Answer3:"மணலில் உள்ள கேணியில் தோண்டிய அளவிற்கு நீர் ஊறும்; அதுபோல், மக்களுக்குக் கற்ற கல்வியின் அளவிற்கு அறிவு ஊறும்" , Wrong: false),Qn(query:"எண்ணித் துணிக கருமம் துணிந்தபின் எண்ணுவம் என்பது இழுக்கு என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"(செய்யத் தகுந்த) செயலையும் வழிகளை எண்ணிய பிறகே துணிந்து தொடங்க வேண்டும் துணிந்தபின் எண்ணிப் பார்க்கலாம் என்பது குற்றமாகும்", Answer2:"அறிவியலுக்கு ஆதாரமான எண்ணும், இலக்கிய அறிவுக்கு ஆதாரமான எழுத்தும் நமக்குக் கண் போன்றவை", Answer3:"நம்பிக்கை/தன்னம்பிக்கையை கைவிடாதீர்கள்" , Wrong: false),Qn(query:"எப்பொருள் எத்தன்மைத் தாயினும் அப்பொருள் மெய்ப்பொருள் காண்பது அறிவு என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"எப்பொருள் எத்தன்மையதாய்த் தோன்றினாலும் (அத் தோற்றத்தை மட்டும் கண்டு மயங்காமல்) அப்பொருளின் உண்மையான இயல்பை அறிவதே மெய்யுணர்வாகும்", Answer2:"அறிவியலுக்கு ஆதாரமான எண்ணும், இலக்கிய அறிவுக்கு ஆதாரமான எழுத்தும் நமக்குக் கண் போன்றவை", Answer3:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்" , Wrong: false),Qn(query:"இயற்றலும் ஈட்டலும் காத்தலும் காத்த வகுத்தலும் வல்லது அரசு என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"பொருள் வரும் வழிகளை மேன்மேலும் இயற்றலும், வந்த பொருள்களைச் சேர்த்தலும், காத்தலும், காத்தவற்றை வகுத்துச் செலவு செய்தலும் வல்லவன் அரசன் ", Answer2:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்", Answer3:"எப்பொருள் எத்தன்மையதாய்த் தோன்றினாலும் (அத் தோற்றத்தை மட்டும் கண்டு மயங்காமல்) அப்பொருளின் உண்மையான இயல்பை அறிவதே மெய்யுணர்வாகும்" , Wrong: false),Qn(query:"எண்ணென்ப ஏனை எழுத்தென்ப இவ்விரண்டும் கண்ணென்ப வாழும் உயிர்க்கு என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"எண் என்று சொல்லப்படுவன, எழுத்து என்று சொல்லப்படுவன ஆகிய இருவகைக் கலைகளையும் வாழும் மக்களுக்குக் கண்கள் என்று கூறுவர்", Answer2:"உலக போக்கிற்கு எற்றவாறு நடந்து கொள்ள வேண்டும்", Answer3:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்" , Wrong: false),Qn(query:"தொட்டனைத்து ஊறும் மணற்கேணி மாந்தர்க்குக் கற்றனைத் தூறும் அறிவு என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"மணலில் உள்ள கேணியில் தோண்டிய அளவிற்கு நீர் ஊறும்; அதுபோல், மக்களுக்குக் கற்ற கல்வியின் அளவிற்கு அறிவு ஊறும்", Answer2:"தொண்டு செய்வதை நிறுத்தாதீர்கள்", Answer3:"செய்வதற்கு அருமையான செயல்களைச் செய்ய வல்லவரே பெரியோர் செய்வதற்கு அரிய செயல்களைச் செய்யமாட்டாதவர் சிறியோர்" , Wrong: false),Qn(query:"செல்வத்துள் செல்வம் செவிச்செல்வம் அச்செல்வம் செல்வத்துள் எல்லாம் தலை என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"செவியால் கேட்டறியும் செல்வம், செல்வங்களுள் ஒன்றாகப் போற்றப்படும் செல்வமாகும்; அச் செல்வம் செல்வங்கள் எல்லாவற்றிலும் தலையானதாகும்", Answer2:"தொண்டு செய்வதை நிறுத்தாதீர்கள்", Answer3:"பிச்சை எடுப்பது வெட்கக்கேடான செயல்" , Wrong: false),Qn(query:"அறம் செய விரும்பு என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"நல்ல செயல்கள் செய்ய ஆசை வேண்டும்", Answer2:"உலக போக்கிற்கு எற்றவாறு நடந்து கொள்ள வேண்டும்", Answer3:"கையில் இருக்கும் பொருளை விட உண்மையான செல்வம் கல்வியே ஆகும்" , Wrong: false),Qn(query:"ஆறுவது சினம் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"கோபத்தை குறைக்க வேண்டும் / கட்டுப்படுத்த வேண்டும்", Answer2:"செவியால் கேட்டறியும் செல்வம், செல்வங்களுள் ஒன்றாகப் போற்றப்படும் செல்வமாகும்; அச் செல்வம் செல்வங்கள் எல்லாவற்றிலும் தலையானதாகும்", Answer3:"கோபத்தை குறைக்க வேண்டும் / கட்டுப்படுத்த வேண்டும்" , Wrong: false),Qn(query:"இயல்வது கரவேல் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"உங்களால் முடிந்த அளவிற்கு உதவுங்கள்", Answer2:"உங்கள் உடைமையைப் பற்றி பெருமை கொள்ளாதீர்கள்", Answer3:"கற்றலின் ஆற்றலை குறைத்து மதிப்பிடாதீர்கள்" , Wrong: false),Qn(query:"ஈவது விலக்கேல் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"தொண்டு செய்வதை நிறுத்தாதீர்கள்", Answer2:"உங்களால் முடிந்த அளவிற்கு உதவுங்கள்", Answer3:"செய்வதற்கு அருமையான செயல்களைச் செய்ய வல்லவரே பெரியோர் செய்வதற்கு அரிய செயல்களைச் செய்யமாட்டாதவர் சிறியோர்" , Wrong: false),Qn(query:"உடையது விளம்பேல் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"உங்கள் உடைமையைப் பற்றி பெருமை கொள்ளாதீர்கள்", Answer2:"உங்கள் உடைமையைப் பற்றி பெருமை கொள்ளாதீர்கள்", Answer3:"கையில் இருக்கும் பொருளை விட உண்மையான செல்வம் கல்வியே ஆகும்" , Wrong: false),Qn(query:"ஊக்கமது கைவிடேல் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"நம்பிக்கை/தன்னம்பிக்கையை கைவிடாதீர்கள்", Answer2:"உங்கள் உடைமையைப் பற்றி பெருமை கொள்ளாதீர்கள்", Answer3:"பொருள் வரும் வழிகளை மேன்மேலும் இயற்றலும், வந்த பொருள்களைச் சேர்த்தலும், காத்தலும், காத்தவற்றை வகுத்துச் செலவு செய்தலும் வல்லவன் அரசன் " , Wrong: false),Qn(query:"எண் எழுத்து இகழேல் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"கற்றலின் ஆற்றலை குறைத்து மதிப்பிடாதீர்கள்", Answer2:"செவியால் கேட்டறியும் செல்வம், செல்வங்களுள் ஒன்றாகப் போற்றப்படும் செல்வமாகும்; அச் செல்வம் செல்வங்கள் எல்லாவற்றிலும் தலையானதாகும்", Answer3:"சாப்பிடுவதற்கு முன், உணவைத் தேவைப்படுபவர்களுடன் பகிர்ந்து கொள்ளுங்கள்" , Wrong: false),Qn(query:"ஏற்பது இகழ்ச்சி என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"பிச்சை எடுப்பது வெட்கக்கேடான செயல்", Answer2:"எப்பொருள் எத்தன்மையதாய்த் தோன்றினாலும் (அத் தோற்றத்தை மட்டும் கண்டு மயங்காமல்) அப்பொருளின் உண்மையான இயல்பை அறிவதே மெய்யுணர்வாகும்", Answer3:"தொண்டு செய்வதை நிறுத்தாதீர்கள்" , Wrong: false),Qn(query:"ஐயமிட்டு உண் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"சாப்பிடுவதற்கு முன், உணவைத் தேவைப்படுபவர்களுடன் பகிர்ந்து கொள்ளுங்கள்", Answer2:"கையில் இருக்கும் பொருளை விட உண்மையான செல்வம் கல்வியே ஆகும்", Answer3:"கற்றலின் ஆற்றலை குறைத்து மதிப்பிடாதீர்கள்" , Wrong: false),Qn(query:"ஒப்புர வொழுகு என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"உலக போக்கிற்கு எற்றவாறு நடந்து கொள்ள வேண்டும்", Answer2:"செவியால் கேட்டறியும் செல்வம், செல்வங்களுள் ஒன்றாகப் போற்றப்படும் செல்வமாகும்; அச் செல்வம் செல்வங்கள் எல்லாவற்றிலும் தலையானதாகும்", Answer3:"பொறாமை மொழிகளைப் பேசுதலை ஒழிப்பாயாக!!" , Wrong: false),Qn(query:"ஓளவியம் பேசேல் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"பொறாமை மொழிகளைப் பேசுதலை ஒழிப்பாயாக!!", Answer2:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்", Answer3:"செவியால் கேட்டறியும் செல்வம், செல்வங்களுள் ஒன்றாகப் போற்றப்படும் செல்வமாகும்; அச் செல்வம் செல்வங்கள் எல்லாவற்றிலும் தலையானதாகும்" , Wrong: false),Qn(query:"அன்னையும் பிதாவும் முன்னறி தெய்வம் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"தாய், தந்தையர் கண்கண்ட தெய்வம்", Answer2:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்", Answer3:"செவியால் கேட்டறியும் செல்வம், செல்வங்களுள் ஒன்றாகப் போற்றப்படும் செல்வமாகும்; அச் செல்வம் செல்வங்கள் எல்லாவற்றிலும் தலையானதாகும்" , Wrong: false),Qn(query:"எண்ணும் எழுத்தும் கண்ணெனத் தகும் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"அறிவியலுக்கு ஆதாரமான எண்ணும், இலக்கிய அறிவுக்கு ஆதாரமான எழுத்தும் நமக்குக் கண் போன்றவை", Answer2:"செய்வதற்கு அருமையான செயல்களைச் செய்ய வல்லவரே பெரியோர் செய்வதற்கு அரிய செயல்களைச் செய்யமாட்டாதவர் சிறியோர்", Answer3:"எண் என்று சொல்லப்படுவன, எழுத்து என்று சொல்லப்படுவன ஆகிய இருவகைக் கலைகளையும் வாழும் மக்களுக்குக் கண்கள் என்று கூறுவர்" , Wrong: false),Qn(query:"கைப்பொருள் தன்னில் மெய்ப்பொருள் கல்வி என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"கையில் இருக்கும் பொருளை விட உண்மையான செல்வம் கல்வியே ஆகும்", Answer2:"உங்களால் முடிந்த அளவிற்கு உதவுங்கள்", Answer3:"பொருள் வரும் வழிகளை மேன்மேலும் இயற்றலும், வந்த பொருள்களைச் சேர்த்தலும், காத்தலும், காத்தவற்றை வகுத்துச் செலவு செய்தலும் வல்லவன் அரசன் " , Wrong: false),Qn(query:"தேடாது அழிக்கின் பாடாய் முடியும் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்", Answer2:"கோபத்தை குறைக்க வேண்டும் / கட்டுப்படுத்த வேண்டும்", Answer3:"பொருளைத் தேடிச் சேர்க்காது, இருப்பதை செலவிட்டுக் கொண்டிருந்தால் துன்பத்தில் முடியும்" , Wrong: false),Qn(query:"நல்இணக்கம் அல்லது அல்லல் படுத்தும் என்ற சொற்றொடரின் அர்த்தம் என்ன ?", Answer1:"நல்லோர் நட்பு இல்லையேல், அல்லல் படுவோம்", Answer2:"தொண்டு செய்வதை நிறுத்தாதீர்கள்", Answer3:"உங்களால் முடிந்த அளவிற்கு உதவுங்கள்" , Wrong: false)]

var randArray:[Int] = [1,2,3]
var hello = 1
var numberAdder = -1


var currentQuestion1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143]

var ActualQuestionNumber: Int = startingQuestionNumber()



struct QuizView: View {
    @State var x = randomiser()
    @State var y = randomiser()
    @State var z = randomiser()
    @Binding var correctQuestions: Int
    @Binding var totalQuestions: Int
    @Binding var arrayWithAnswerPressed:[String]
    @Binding var wrongQuestions: [Qn]
    @State var isCorrect = false
    @State var isAlertPresented = false
    @State var isAlert2presented = false
    
    var body: some View {
        
        
        if UIDevice.current.userInterfaceIdiom == .phone{
            
            NavigationView{
                ScrollView{
                    VStack{
                        Spacer()
                        Text("You have completed \(totalQuestions) questions so far!")
                            .foregroundColor(Color(red: 0.0, green: 0.3686274509803922, blue: 0.7137254901960784))
                            .font(.system(size: 14))
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .trailing])
                        
                        Text("")
                        
                        Text(questions[ActualQuestionNumber].query)
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                            .foregroundColor(Color(red: 0.00392156862745098, green: 0.3686274509803922, blue: 0.7137254901960784))
                            .cornerRadius(20)
                            .padding()
                        
                        Button(action: {
                            withAnimation {
                                didTapOption(optionName: z)
                            }
                        }) {
                            HStack{
                                Spacer()
                                Image(systemName: "triangle.fill")
                                Text("")
                                Text(z)
                                Spacer()
                            }.padding()
                                .frame(maxWidth: .infinity)
                                .lineLimit(.max)
                                .background(Color(red: 0.889, green: 0.106, blue: 0.241))
                                .foregroundColor(Color(red: 0.999, green: 0.992, blue: 1.0))
                                .cornerRadius(20)
                                .padding([.top, .leading, .trailing])
                        }
                        
                        Button(action: {
                            withAnimation {
                                didTapOption(optionName: y)
                            }
                        }) {
                            HStack{
                                Spacer()
                                Image(systemName: "circle.fill")
                                Text("")
                                Text(y)
                                Spacer()
                                
                            }.padding()
                                .frame(maxWidth: .infinity)
                                .lineLimit(.max)
                                .background(Color(red: 0.844, green: 0.616, blue: 0.013))
                                .foregroundColor(Color(red: 0.999, green: 0.992, blue: 1.0))
                                .cornerRadius(20)
                                .padding()
                        }
                        
                        Button(action: {
                            withAnimation {
                                didTapOption(optionName: x)
                            }
                        }) {
                            HStack{
                                Spacer()
                                Image(systemName: "square.fill")
                                Text("")
                                Text(x)
                                Spacer()
                                
                            }.padding()
                                .frame(maxWidth: .infinity)
                                .lineLimit(.max)
                                .background(Color(red: 0.157, green: 0.538, blue: 0.046))
                                .foregroundColor(Color(red: 0.999, green: 0.992, blue: 1.0))
                                .cornerRadius(20)
                                .padding([.bottom, .leading, .trailing])
                        }
                        
                    }.alert(isPresented: $isAlertPresented) {
                        
                        Alert(title: Text(isCorrect ? "Correct" : "Wrong"),
                              message: Text(isCorrect ? "Very good, Keep it up" : "Oh No! its ok, do better next time :)"),
                              dismissButton: .default(Text("OK")) {
                            withAnimation(.default){
                                randomQuestionNumber()
                                x = randomiser()
                                y = randomiser()
                                z = randomiser()
                                
                            }
                        })
                    }
                    .toolbar{
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            NavigationLink(destination: QuizResultsView(correctQuestions: $correctQuestions, totalQuestions: $totalQuestions, arrayWithAnswerPressed: $arrayWithAnswerPressed, wrongQuestions: $wrongQuestions)){
                                Text("Results")
                            }
                            
                        }
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            
                            NavigationLink(destination: MistakesView(wrongQuestion: wrongQuestions, arrayWithWrongAnswers: arrayWithAnswerPressed)){
                                Text("Review Mistakes (\(wrongQuestions.count))")
                                
                            }
                            
                            
                        }
                    }
                    .navigationTitle("Quiz")
                    .navigationBarTitleDisplayMode(.large)
                }
                
            }
            .navigationViewStyle(DefaultNavigationViewStyle())
        }else{
            NavigationView{
                ScrollView{
                    VStack{
                        Spacer()
                        Text("You have completed \(totalQuestions) questions so far!")
                            .foregroundColor(Color(red: 0.0, green: 0.3686274509803922, blue: 0.7137254901960784))
                            .font(.system(size: 14))
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .trailing])
                        
                        Text("")
                        
                        Text(questions[ActualQuestionNumber].query)
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                            .foregroundColor(Color(red: 0.00392156862745098, green: 0.3686274509803922, blue: 0.7137254901960784))
                            .cornerRadius(20)
                            .padding()
                        
                        Button(action: {
                            didTapOption(optionName: z)
                        }) {
                            HStack{
                                Spacer()
                                Image(systemName: "triangle.fill")
                                Text("")
                                Text(z)
                                Spacer()
                            }.padding()
                                .frame(maxWidth: .infinity)
                                .lineLimit(.max)
                                .background(Color(red: 0.889, green: 0.106, blue: 0.241))
                                .foregroundColor(Color(red: 0.999, green: 0.992, blue: 1.0))
                                .cornerRadius(20)
                                .padding([.top, .leading, .trailing])
                        }
                        
                        Button(action: {
                            didTapOption(optionName: y)
                        }) {
                            HStack{
                                Spacer()
                                Image(systemName: "circle.fill")
                                Text("")
                                Text(y)
                                Spacer()
                                
                            }.padding()
                                .frame(maxWidth: .infinity)
                                .lineLimit(.max)
                                .background(Color(red: 0.844, green: 0.616, blue: 0.013))
                                .foregroundColor(Color(red: 0.999, green: 0.992, blue: 1.0))
                                .cornerRadius(20)
                                .padding()
                        }
                        
                        Button(action: {
                            didTapOption(optionName: x)
                        }) {
                            HStack{
                                Spacer()
                                Image(systemName: "square.fill")
                                Text("")
                                Text(x)
                                Spacer()
                                
                            }.padding()
                                .frame(maxWidth: .infinity)
                                .lineLimit(.max)
                                .background(Color(red: 0.157, green: 0.538, blue: 0.046))
                                .foregroundColor(Color(red: 0.999, green: 0.992, blue: 1.0))
                                .cornerRadius(20)
                                .padding([.bottom, .leading, .trailing])
                        }
                        
                    }.alert(isPresented: $isAlertPresented) {
                        
                        Alert(title: Text(isCorrect ? "Correct" : "Wrong"),
                              message: Text(isCorrect ? "Very good, Keep it up" : "Oh No! its ok, do better next time :)"),
                              dismissButton: .default(Text("OK")) {
                            withAnimation(.default){
                                randomQuestionNumber()
                                x = randomiser()
                                y = randomiser()
                                z = randomiser()
                                
                            }
                        })
                    }
                    .toolbar{
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            NavigationLink(destination: QuizResultsView(correctQuestions: $correctQuestions, totalQuestions: $totalQuestions, arrayWithAnswerPressed: $arrayWithAnswerPressed, wrongQuestions: $wrongQuestions)){
                                Text("Results")
                            }
                        }
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            
                            NavigationLink(destination: MistakesView(wrongQuestion: wrongQuestions, arrayWithWrongAnswers: arrayWithAnswerPressed)){
                                Text("Review Mistakes (\(wrongQuestions.count))")
                                
                            }
                            
                            
                        }
                    }
                    .navigationTitle("Quiz")
                    .navigationBarTitleDisplayMode(.large)
                }
                
            }
            .navigationViewStyle(.stack)
        }
    }
    func didTapOption(optionName: String) {
        withAnimation{
            if optionName == questions[ActualQuestionNumber].Answer1{
                print("Correct!")
                isCorrect = true
                questions[ActualQuestionNumber].Wrong = false
                arrayWithAnswerPressed = arrayWithAnswerPressed.filter{ i in
                    return i != optionName
                }
                withAnimation{
                    correctQuestions += 1
                }
            } else {
                print("Wrong!")
                arrayWithAnswerPressed.append(optionName)
                wrongQuestions.append(questions[ActualQuestionNumber])
                isCorrect = false
                questions[ActualQuestionNumber].Wrong = true
                print(wrongQuestions)
                
                
            }
            withAnimation{
                totalQuestions += 1
                
            }
            isAlertPresented = true
        }
    }
    
    
}
func startingQuestionNumber() -> Int {
    withAnimation{
        if let orangeJustice = currentQuestion1.randomElement() {
            currentQuestion1 = currentQuestion1.filter{ i in
                i != orangeJustice
                
            }
            
            return orangeJustice
        }
        return 0
    }
}

func randomQuestionNumber (){
    withAnimation{
        if currentQuestion1.count >= 1 {
            ActualQuestionNumber = currentQuestion1.randomElement() ?? 0
            currentQuestion1 = currentQuestion1.filter{ i in
                i != ActualQuestionNumber
                
            }
            
        }else{
            while numberAdder <= 143 {
                if numberAdder != -1 {
                    currentQuestion1.append(numberAdder)
                }
                numberAdder += 1
            }
            
        }
        print(ActualQuestionNumber)
        print(currentQuestion1)
    }
}
func randomiser() -> String {
    withAnimation{
        if randArray.count >= 1 {
            if let lolz = randArray.randomElement(){
                if lolz == 1 {
                    randArray = randArray.filter{ i in
                        return i.magnitude != 1
                        
                    }
                    print(randArray)
                    return questions[ActualQuestionNumber].Answer1
                    
                }
                else if lolz == 2 {
                    randArray = randArray.filter{ i in
                        return i.magnitude != 2
                        
                    }
                    print(randArray)
                    return questions[ActualQuestionNumber].Answer2
                }
                else if lolz == 3{
                    randArray = randArray.filter{ i in
                        return i.magnitude != 3
                        
                    }
                    print(randArray)
                    return questions[ActualQuestionNumber].Answer3
                }
            }
        }
        else {
            randArray.append(1)
            randArray.append(2)
            randArray.append(3)
            if randArray.count >= 1 {
                
                if let lol = randArray.randomElement() {
                    if lol == 1 {
                        randArray = randArray.filter{ i in
                            return i.magnitude != 1
                            
                        }
                        print(randArray)
                        return questions[ActualQuestionNumber].Answer1
                        
                    }
                    else if lol == 2 {
                        randArray = randArray.filter{ i in
                            return i.magnitude != 2
                            
                        }
                        print(randArray)
                        return questions[ActualQuestionNumber].Answer2
                    }
                    else if lol == 3 {
                        randArray = randArray.filter{ i in
                            return i.magnitude != 3
                            
                        }
                        print(randArray)
                        return questions[ActualQuestionNumber].Answer3
                    }
                }
            }
        }
        return "Radomizer works"
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(correctQuestions: .constant(0), totalQuestions: .constant(0), arrayWithAnswerPressed: .constant([]), wrongQuestions: .constant([]))
    }
}
