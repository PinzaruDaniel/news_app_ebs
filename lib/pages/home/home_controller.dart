import 'package:get/get.dart';

import '../../views/view_models.dart';

class NewsController extends GetxController {
  RxList<NewsViewModel> news = RxList([]);

  void initNews() {
    news.value = [
      NewsViewModel(
        title: 'Joe Biden in Press Conference USA Announces New Political Policy',
        imageUrl: 'assets/newsimage/biden.png',
        publisher: 'BBC News',
        publisherIcon: 'assets/icons/bbc.png',
        topic: 'Politics',
        views: '638.8k',
        likes: '381.4k',
        comments: '170.5k',
        description:
            'Joe Biden laid out his foreign policy vision for America to restore dignified leadership at '
            'home and respected leadership on the world stage. '
            'Arguing that our policies at home and abroad are deeply connected, Joe Biden announced that, '
            'as president, he will advance the security, prosperity, and values of the United States.\n'
            'Donald Trump’s erratic policies and failure to uphold basic democratic principles have surrendered our'
            ' position in the world, undermined our democratic alliances, '
            'weakened our ability to mobilize others to meet these challenges, '
            'and threatened our security and our future.\n'
            'In a speech at The Graduate Center at CUNY in New York, Joe Biden laid out his blueprint to '
            'repair the damage wrought by President Trump and chart a fundamentally different course '
            'for American foreign policy for the world as we find it today—and as we anticipate it will '
            'be tomorrow. Biden will continue to build on this vision over the course of the campaign.',
        hashtags: ['politics', 'usa', 'joebiden', 'news', 'america', 'uk', 'bbc', 'new'],
      ),

      NewsViewModel(
        title: 'Wow! USA Develops New Way of Faster and More Effective Medicines',
        imageUrl: 'assets/newsimage/doctors.png',
        publisher: 'BBC News',
        publisherIcon: 'assets/icons/bbc.png',
        topic: 'Health',
        views: '512.3k',
        likes: '381.4k',
        comments: '170.5k',
        description:
            'Scientists in the USA have announced a groundbreaking breakthrough in medicine development that promises to drastically accelerate the process of creating new drugs while improving their effectiveness. '
            'This pioneering method combines state-of-the-art biotechnology with artificial intelligence to optimize drug discovery, dramatically shortening the timeline from initial research to patient availability.\n'
            'Traditionally, developing new medications has been a lengthy, costly, and often uncertain process, sometimes taking over a decade with no guarantee of success. '
            'However, this new approach leverages AI algorithms to analyze vast amounts of biological data, identify promising compounds, and predict their efficacy and safety with unprecedented accuracy.\n'
            'Medical experts anticipate that this advancement will not only save countless lives by delivering treatments faster but also lower healthcare costs by streamlining the production pipeline. '
            'The technology could enable rapid responses to emerging health crises, such as pandemics, by expediting vaccine and antiviral drug development.\n'
            'Researchers are currently conducting extensive clinical trials to validate the safety and performance of medicines created using this technology. '
            'They are also working closely with regulatory authorities to ensure compliance with health standards. If these trials succeed, this innovation is expected to revolutionize healthcare globally, offering new hope to patients suffering from chronic diseases, cancers, and rare conditions.\n'
            'Moreover, this development opens the door to personalized medicine tailored to individual genetic profiles, potentially transforming how doctors diagnose and treat illnesses. '
            'As the healthcare industry embraces this new era, patients can look forward to more effective, targeted, and timely therapies.',
        hashtags: ['health', 'usa', 'medicine', 'innovation', 'science', 'biotech', 'AI'],
      ),

      NewsViewModel(
        title: 'Hot! Donald Trump Alludes to President Joe in Latest Remarks',
        imageUrl: 'assets/newsimage/trump.png',
        publisher: 'CNN',
        publisherIcon: 'assets/icons/cnn.png',
        topic: 'Politics',
        views: '712.9k',
        likes: '442.1k',
        comments: '196.4k',
        description:
            'In a fiery speech delivered at a large rally, former President Donald Trump made several pointed allusions to current President Joe Biden’s leadership and policies. '
            'Trump’s remarks reignited debates within political circles, underscoring the stark contrasts between the two political figures and their visions for America.\n'
            'Trump criticized Biden’s handling of key issues such as the economy, immigration, foreign policy, and the COVID-19 pandemic. '
            'He accused the current administration of weak leadership and failing to protect American interests both at home and abroad. '
            'These comments resonated strongly with his core supporters, who view Trump as a champion of conservative values and economic prosperity.\n'
            'Political analysts have been quick to analyze the potential impact of Trump’s rhetoric on the Republican Party’s unity and upcoming elections. '
            'Some experts suggest his statements could galvanize the party’s base, while others warn that they may deepen existing divisions within the GOP.\n'
            'The tension between Trump and Biden symbolizes broader partisan challenges in the United States, as the nation remains deeply divided on many political and social issues. '
            'While Trump continues to wield significant influence over conservative voters, the Biden administration pushes forward with its policy agenda aimed at economic recovery, climate change mitigation, and social equity.\n'
            'Observers will be watching closely how these political dynamics evolve over the coming months, especially as the next election cycle approaches. '
            'The rivalry between Trump and Biden, representing contrasting visions for the country, is likely to dominate headlines and shape voter sentiment in the foreseeable future.',
        hashtags: ['politics', 'trump', 'joebiden', 'usa', 'election', 'rally', 'gop'],
      ),

      NewsViewModel(
        title: 'Manchester United Adds a Famous Portugal Player',
        imageUrl: 'assets/newsimage/football.png',
        publisher: 'CNET',
        publisherIcon: 'assets/icons/cnet.png',
        topic: 'Sports',
        views: '890.4k',
        likes: '513.7k',
        comments: '234.9k',
        description:
            'Manchester United has officially announced the signing of a highly celebrated Portuguese football player, a move that is expected to significantly boost the team’s performance and competitiveness. '
            'Known worldwide for his exceptional talent, agility, and goal-scoring prowess, this player brings a wealth of experience from top European leagues and international competitions.\n'
            'The transfer deal, finalized after weeks of negotiations, represents a strategic effort by Manchester United to reclaim its status as a dominant force in both the English Premier League and international tournaments. '
            'The club has faced intense competition in recent years and hopes this signing will inject fresh energy and skill into the squad.\n'
            'Fans and pundits alike have expressed excitement about the player’s potential impact, eagerly anticipating his debut and how he will gel with the team’s current roster. '
            'The Portuguese player is expected to play a pivotal role in Manchester United’s attacking strategies and help the club challenge for major trophies.\n'
            'The club’s management emphasized their commitment to building a winning team by attracting top-tier talent worldwide. They also highlighted the player’s professionalism, leadership qualities, and ability to inspire younger team members, which they believe will contribute to a positive locker room environment.\n'
            'This acquisition is viewed as a significant milestone in Manchester United’s ongoing rebuilding process under the current coaching staff. '
            'Supporters hope that with this addition, the team can mount a serious challenge for league titles and regain its place among Europe’s elite football clubs.',
        hashtags: ['sports', 'manutd', 'football', 'transfer', 'portugal', 'premierleague', 'soccer'],
      ),

      NewsViewModel(
        title: 'Simple Healthy Foods that Make You Live Long',
        imageUrl: 'assets/newsimage/food.png',
        publisher: 'Daily Mail',
        publisherIcon: 'assets/icons/dailymail.png',
        topic: 'Food',
        views: '432.2k',
        likes: '321.5k',
        comments: '89.7k',
        description:
            'Nutritionists and health experts emphasize the importance of incorporating simple yet nutrient-rich foods into daily diets to promote longevity and overall wellness. '
            'Scientific studies have identified specific foods that contribute to reducing the risk of chronic diseases, improving heart health, and enhancing brain function.\n'
            'Leafy green vegetables like spinach and kale provide vital antioxidants and vitamins, while berries are rich in anti-inflammatory compounds that help protect cells from damage. '
            'Nuts and seeds offer healthy fats essential for brain and heart health, and whole grains supply sustained energy through fiber and essential nutrients.\n'
            'Alongside diet, lifestyle factors such as regular physical exercise, adequate hydration, stress management, and sufficient sleep are critical components of healthy aging. '
            'Experts suggest that a holistic approach combining these elements can significantly improve quality of life and extend lifespan.\n'
            'Including these foods regularly in meals can help prevent conditions like diabetes, hypertension, and certain cancers. '
            'Moreover, balanced nutrition supports immune function, enabling the body to better fight infections and recover from illnesses.\n'
            'This guidance encourages people of all ages to make mindful food choices, focusing on natural, unprocessed ingredients that nurture the body and mind. '
            'By adopting these dietary habits, individuals can enjoy increased energy, mental clarity, and resilience well into older age.',
        hashtags: ['health', 'lifestyle', 'nutrition', 'longevity', 'wellness', 'diet', 'healthy'],
      ),

      NewsViewModel(
        title: 'China Develops Advanced Covid-19 Vaccines',
        imageUrl: 'assets/newsimage/medicines.png',
        publisher: 'TIME',
        publisherIcon: 'assets/icons/time.png',
        topic: 'Health',
        views: '678.9k',
        likes: '410.3k',
        comments: '154.8k',
        description:
            'In response to the ongoing challenges posed by Covid-19 and its rapidly evolving variants, Chinese scientists have successfully developed advanced vaccines designed to offer stronger and longer-lasting protection. '
            'These vaccines utilize innovative technologies that enhance the immune system’s ability to recognize and fight the virus.\n'
            'Preliminary clinical trials conducted across multiple regions have yielded encouraging results, demonstrating increased efficacy against new strains and reduced side effects compared to earlier vaccine versions. '
            'These developments could play a crucial role in curbing future outbreaks and reducing the pandemic’s global impact.\n'
            'Chinese health authorities plan to launch large-scale vaccination campaigns targeting high-risk populations, including the elderly, frontline healthcare workers, and those with underlying health conditions. '
            'The rollout will be closely monitored to ensure safety and public confidence.\n'
            'This breakthrough also signals China’s growing leadership in biotechnology and vaccine research, contributing valuable knowledge and resources to the worldwide effort to control infectious diseases.\n'
            'Collaboration with international health organizations is ongoing to facilitate vaccine distribution, especially in developing countries facing vaccine shortages. '
            'These efforts aim to achieve broader herd immunity and prevent the emergence of new variants that could threaten global health security.',
        hashtags: ['health', 'china', 'covid19', 'vaccine', 'science', 'pandemic', 'biotech'],
      ),

      NewsViewModel(
        title: 'A Japanese Company Develops a New Model of Robots',
        imageUrl: 'assets/newsimage/robot.png',
        publisher: 'USA Today',
        publisherIcon: 'assets/icons/usatoday.png',
        topic: 'Technology',
        views: '387.6k',
        likes: '256.9k',
        comments: '102.3k',
        description:
            'A pioneering Japanese technology firm has announced the launch of a revolutionary new model of '
            'robots designed to transform both domestic and industrial environments. '
            'These robots are equipped with state-of-the-art artificial intelligence, '
            'allowing them to perform complex tasks autonomously while interacting naturally with humans.\n'
            'The latest model features enhanced mobility, sensory perception, and adaptive learning capabilities. '
            'These improvements enable the robots to navigate dynamic environments safely, '
            'perform maintenance and operational duties, and provide assistance in homes and workplaces.\n'
            'This innovation marks a significant milestone in robotics and automation, with broad implications for '
            'industries such as manufacturing, healthcare, logistics, and customer service. By reducing the need f'
            'or manual labor in repetitive or hazardous tasks, these robots can increase efficiency and safety.\n'
            'The company is preparing to begin mass production within the next year, responding to growing demand for '
            'intelligent automation solutions worldwide. They plan to collaborate with global partners to integrate '
            'their technology into diverse applications, ranging from elderly care to complex industrial processes.\n'
            'Experts believe this breakthrough will accelerate the adoption of robotics in everyday life, '
            'improving quality of life and driving economic growth through technological advancement.',
        hashtags: ['technology', 'robots', 'japan', 'innovation', 'AI', 'automation', 'future'],
      ),

      NewsViewModel(
        title: 'Victor Muntean, alias „Caras”, susține că a devenit campion mondial la powerlifting',
        imageUrl: 'assets/newsimage/caras.jpg',
        publisher: 'TV8 Moldova',
        publisherIcon: 'assets/icons/tv8.jpeg',
        topic: 'Sport',
        views: '148.3k',
        likes: '87.2k',
        comments: '29.6k',
        description:
            'Victor Muntean, cunoscut în mediul online ca „Caras”, a declarat că a obținut 9 medalii de aur, Cupa Absolută și două recorduri mondiale la o competiție internațională de powerlifting desfășurată în Rusia. '
            'Evenimentul a avut loc în Sankt Petersburg și a fost organizat de World Raw Powerlifting Federation (WRPF).\n'
            'Caras a publicat imagini și videoclipuri de la competiție pe TikTok, unde are o audiență semnificativă. Susține că performanțele sale îl clasează printre cei mai buni sportivi moldoveni din domeniu.\n'
            'Totuși, autoritățile din Republica Moldova au reacționat rapid. Ministerul Educației și Cercetării a menționat că Muntean nu face parte din lotul național, nu a fost delegat oficial și că participarea lui reprezintă un act unilateral, neautorizat. '
            'Competiția în cauză nu este recunoscută de federațiile internaționale legitime',
        hashtags: ['sport', 'caras', 'powerlifting', 'moldova', 'tiktok', 'controversal', 'campion'],
      ),
    ];
  }
}
