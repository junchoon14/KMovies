//
//  MoviesTableViewController.swift
//  KMovies
//
//  Created by Jason Hsu on 2018/8/14.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let moviesCell = "MoviesCell"
    }
    
    var sectionTitles = ["羅宏鎮 導演", "奉俊昊 導演", "朴贊郁 導演"]
    var sectionContent = [
                          [Movies(image: "TheChaser", name: "追擊者", type: "犯罪驚悚", year: "2008", story: "經營特種行業應召女郎仲介的前警察正浩因為手下的女孩最近頻傳失蹤，只好逼迫生病中的美珍出去接客，卻意外發現美珍接客對象的電話號碼和女孩們失蹤前最後通話的號碼相同。他命令美珍去打聽出買春客的地址準備埋伏，後來連美珍也失去聯繫，於是正浩決定直接去尋找美珍的下落……", photos: ["chaser01", "chaser02", "chaser03", "chaser04", "chaser05", "chaser06", "chaser07", "chaser08", "chaser09", "chaser10", "chaser11", "chaser12", "chaser13"]),
                           Movies(image: "TheYellowSea", name: "黃海追緝", type: "犯罪驚悚", year: "2010", story: "金九南（河正宇 飾）是一名住在延邊的計程車司機，為了讓妻子去南韓打工，金九南借了6萬塊錢的巨款。然而，妻子已經六個月沒有消息了，金九南每天喝酒賭博，積欠的債務越來越多。有天金九南認識了明先生（金允錫 飾），明先生表示他願意為他償還所有的債務，條件是他必須殺掉一個人。", photos: ["sea01", "sea02", "sea03", "sea04", "sea05", "sea06", "sea07", "sea08", "sea09", "sea10", "sea11"]),
                           Movies(image: "TheWailing", name: "哭聲", type: "神魔懸疑", year: "2016", story: "講述一個詭異的日本人來到小村莊後 引發了連續命案死亡事件，警察鐘久的女兒亦似中邪發病，找不出病因下只有找來道士一光作法驅魔，全村混亂事件中另有一無名神秘白衣女子貫穿整個事件！正邪善惡之間令人不安與猜疑！\n\n註：「谷城」,「哭聲」兩者韓語發音相同；以漢字區別不同。\n\n谷城為韓國一全羅南道山中小鎮，片名有一語雙關之意！", photos: ["wailing01", "wailing02", "wailing03", "wailing04", "wailing05", "wailing06", "wailing07", "wailing08", "wailing09", "wailing10", "wailing11", "wailing12", "wailing13"])],
                          [Movies(image: "MemoriesOfMurder", name: "殺人回憶", type: "犯罪驚悚", year: "2003", story: "1986年，京畿道某處發現了一名女屍，該名女子死去前曾遭人強姦。兩個月後，以相同手法的先姦後殺案相繼出現，立即引起全國關注，警方更因此成立調查小組去調查這些連環姦殺案，並由探員朴度文和徐泰潤負責此案。朴度文一向以自己的第六感去破案，並迫使鎮上所有的壞蛋去認罪；徐泰潤則是重新整理所有資料，務求找到線索，因此合作之間發生了不少磨擦，令兩人的關係更為緊張。然而，他們開始了解殺手鍾情在下雨天，選擇向穿著紅衣的女士下毒手...", photos: ["murder01", "murder02", "murder03", "murder04", "murder05", "murder06", "murder07", "murder08", "murder09", "murder10"]),
                           Movies(image: "TheHost", name: "駭人怪物", type: "恐怖諷刺", year: "2006", story: "《駭人怪物》一開始描述美軍科學家將大量變異的甲醛倒入漢江  \n6年後，陽光普照、遊人如織的漢江河岸，漢江大橋下突然出現之前從未見過的生物。忽然間，這個不明生物開始攻擊起圍觀的群眾，漢江河岸頓時成了人間煉獄。在河邊經營雜貨店的阿斗雖然努力抵抗，但終究只能眼睜睜的看著自己的女兒賢書被不明生物吞噬。攻擊過後，不明生物消失在河中。然而不明生物所造成的傷害，幾乎將首爾全面癱瘓，政府於是把漢江河岸全面封鎖，並聲稱這不明生物身上帶有一種可怕的病毒。其中駐韓美軍士兵唐納對抗怪物時遇襲而感染病毒，數天後便死亡，面對事情的嚴重性，美軍認為化學武器是唯一可以控制這個不明生物並阻止病毒散播的方法。  /n喪失了生命中最寶貴的女兒的阿斗，竟在此時接到女兒賢書的求救電話，但政府方面沒有人願意相信他。阿斗和他的家人們雖然只是一般的民眾，但是為了自己寶貝的賢書，他們下定決心靠自己的力量，闖入漢江禁區將賢書救出。途中不少人為了拯救賢書，因而喪失了生命。韓國政府決定聽從美軍建議於漢江禁區使用化學武器，隨著化學武器施放的時間一分一秒的逼近，阿斗救出女兒的機會也愈來愈小……   \n其實怪物並沒有攜帶什麼病毒，阿斗被抓獲時，美軍醫生也向其坦白士兵唐納是手術中意外死亡，驗屍報告沒有感染病毒跡象。而這次事故剛好有理由能夠為美軍測試「黃色藥劑」的大規模殺傷生化武器的威力，以在中東使用甚至對付敵國。事故後美軍也承認「病毒」一說完全是失誤所致。", photos: ["host01", "host02", "host03", "host04", "host05", "host06", "host07", "host08", "host09", "host10"]),
                           Movies(image: "Mother", name: "非常母親", type: "懸疑驚悚", year: "2009", story: "守寡多年的母親（金惠子 飾）與唯一的兒子尹斗俊（元斌 飾）相依為命，斗俊儘管已經年近三十，但由於天生的智商缺陷，導致其性格仍如同小孩般天真單純。某天一個女孩的屍體被發現棄置在廢棄大樓內，斗俊竟被警方視為頭號嫌疑犯羈押。完全不了解事態嚴重性的斗俊，在警方的脅迫下承認了罪行！出於人類本性中最原始的母愛，沒有任何背景與社會影響力的媽媽為了拯救兒子，從鄉下來到大城市，無所不用其極地要為兒子洗清罪嫌，難以預期的連鎖效應和驚駭秘密也接連爆發…。", photos: ["mother01", "mother02", "mother03", "mother04", "mother05", "mother06", "mother07", "mother08", "mother09", "mother10", "mother11"]),
                           Movies(image: "Snowpiercer", name: "末日列車", type: "冒險科幻", year: "2013", story: "因為全球暖化，人類將CW7發射到大氣來遏制全球暖化，但是「過於成功」導致全球氣溫驟降。僅存的人類都乘坐在諾亞方舟般的列車裡，這台自給自足，能永恆不滅地運轉下去的列車卻存在兩種截然不同的生活，前區的人奢華度日，後區的人被壓榨，還會受到前面人的威脅和無理要求。末節車廂的人們不堪忍受如戰俘收容所般的惡劣環境，決定起來反抗。叛軍領袖寇帝斯（Curtis）策劃利用一場暴動來奪取神祕殘暴獨裁者威佛（Wilford）所掌控火車命脈的引擎區，首先他要解救被囚禁起來的掌鑰人，也就是設計這輛列車門禁系統的南宮民秀，不過暴動計畫也因為橫生枝節的意外變得更加險峻。在經歷了重重險阻之後，寇帝斯終於到達車頭見到威佛。威佛告訴他由於全球冰季太多難民來到車上避難，超出負荷，所以每隔一段時間當難民人數太多時威佛就和在難民中的臥底一起製造叛亂，然後保安藉此機會殺戮一些人，以保持生態平衡。這次叛亂其實也是威佛策劃的。現在威佛老了，他準備將車長的位置傳給有傑出領導力的寇帝斯。寇帝斯在經過內心掙扎之後，發現列車損壞的零件靠難民中的小孩子代替，於是憤而殺死威佛破壞列車。南宮民秀之女離開翻倒的列車之後看到了北極熊，說明世界上動物已經可以生存。", photos: ["snow01", "snow02", "snow03", "snow04", "snow05", "snow06", "snow07", "snow08"]),
                           Movies(image: "Okja", name: "玉子", type: "動作冒險", year: "2017", story: "講述了巨大生物「玉子」和與它一起在山谷長大的少女美子之間結下真摯友誼並展開奇異征程的故事。本來玉子是一間公司的比賽產品，因比賽快將完結，玉子需要回到公司接受評分而離開少女美子。因為對玉子的不捨令美子抱著必死的決心踏上了尋找玉子的征程，並被捲入了意想不到的陰謀...", photos: ["okja01", "okja02", "okja03", "okja04", "okja05", "okja06", "okja07", "okja08", "okja09"])],
                          [Movies(image: "SympathyForMrVengeance", name: "復仇", type: "犯罪驚悚", year: "2002", story: "天生聾啞的柳和姊姊相依為命，除了姐姐以外，在啟聰學校認識的英美是唯一的朋友。柳的姊姊因為生病需要換腎，為了挽救姊姊的生命，深處絕境的柳，只好綁架工廠老闆東鎮的女兒侑善。", photos: ["vengeance01", "vengeance02", "vengeance03", "vengeance04", "vengeance05", "vengeance06"]),
                           Movies(image: "Oldboy", name: "原罪犯", type: "犯罪驚悚", year: "2003", story: "過著平凡生活的吳大秀本來與妻女一起快樂生活，在女兒生日那天他被指醉酒鬧事被捕，之後失蹤。事實上他被軟禁在一家旅館內，透過旅館的電視，他知道自己的妻子被人謀殺，女兒亦失蹤，而這些罪名都被推到他的身上。15年後他突然被釋放，吳大秀四處打聽，查明自己當年為何會被監禁。有人給他五天的時間去查明真相，但若他查不出的話，一名女子就會因他而喪命…。", photos: ["oldboy01", "oldboy02", "oldboy03", "oldboy04"]),
                           Movies(image: "LadyVengeance", name: "親切的金子", type: "犯罪驚悚", year: "2005", story: "2004年，擁有年輕美貌的重犯金子從慶州女子監獄被釋放出來，她所犯的罪行是綁架及殺害一名男童，令全國轟動一時。獄中的金子一直都和藹可親，被其他犯人暱稱為「親切的金子」。雖然身處監獄，她每一天都在計畫如何向案子的真正兇手——當年的英語老師「白先生」報仇……", photos: ["lady01", "lady02", "lady03", "lady04", "lady05", "lady06"])]
                          
    ]
    
    var logoImageView: UIImageView!
    var cachedImageViewSize: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.logoImageView = UIImageView(image: UIImage(named: "logo"))
        logoImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 120)
        self.logoImageView.contentMode = .scaleAspectFill
        self.cachedImageViewSize = self.logoImageView.frame
        self.tableView.addSubview(self.logoImageView)
        self.logoImageView.center = CGPoint(x: self.view.center.x, y: self.logoImageView.center.y)
        self.tableView.sendSubviewToBack(self.logoImageView)
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 120))
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
                let y: CGFloat = -scrollView.contentOffset.y
                if y > 0 {
                    self.logoImageView.frame = CGRect(x: 0, y: scrollView.contentOffset.y, width: self.cachedImageViewSize.size.width + y, height: self.cachedImageViewSize.size.height + y)
                    self.logoImageView.center = CGPoint(x: self.view.center.x, y: self.logoImageView.center.y)
                }
    }
   
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return sectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sectionContent[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
         return sectionTitles[section]
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.moviesCell, for: indexPath) as? MoviesTableViewCell
            else {
                return UITableViewCell()
        }
        let cellData = sectionContent[indexPath.section][indexPath.row]
        cell.update(with: cellData)
    
        return cell
    }
    
    
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let moviesDetailViewController = segue.destination as? MoviesDetailViewController, let section = tableView.indexPathForSelectedRow?.section, let row = tableView.indexPathForSelectedRow?.row {
            
            moviesDetailViewController.detail = sectionContent[section][row]
            
        }
        
        
    }
}

