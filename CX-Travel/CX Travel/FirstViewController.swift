//
//  FirstViewController.swift
//  CX Travel
//
//  Created by Yao Qingning on 10/23/16.
//  Copyright © 2016 Yao Qingning. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let attractions = ["hawaii", "hk", "kyoto", "sydney", "ny"]
    let titles = ["Hawaii 2016/5/31", "Hong Kong 2015/8/23", "Kyoto 2014/6/15", "Sydney 2014/4/14", "New York 2013/5/5"]
    let briefIntro = ["Whether an island resident or only on vacation, Hawaii has something special for everyone. The islands that make up Hawaii are some of the most beautiful and diverse in the world. Islands range from lush tropical rain forests to desert plains and from warm sunny beaches to wind swept snowy peaks. Although Hawaii is the largest and Kauai is the most beautiful, Oahu has the largest population of the Hawaiian Islands.",
    "The rain in Hong Kong was neither that hard nor light; it was only moderate. As the plane landed, I saw the rear part of the wings flop to reduce speed. I could almost see the thick air mixed with rain shower. There was like a white line created by the thick air. We spent our time in our hotel and shopped in the streets. During our tour at Victoria Harbour, I felt the strong sea breeze blow my hair to disarray as the tour guide took a picture of me for my souvenir. The picture was given to me in our third day there. It was printed on a plate. We were able to see the Central Plaza, Hong Kong’s tallest building just across the bay. It was about 78 storeys high. There were also statues of Bruce Lee, Jackie Chan and other known figures along the harbor.",
    "Wandering the narrow streets packed full of tiny shops and cafes, I turned a corner and find myself on the path to a beautiful zen garden or an ancient temple. The homes and buildings are all of Machiya style, yet despite its proximity to the main road, I still felt a distinct quietness and sense of peace while walking the streets.",
    "Living in Sydney, a wise friend once told me, is like dating a supermodel: It’s bound to make everyone jealous. And indeed it has. Ever since I made the “Emerald City” my adopted home, visiting friends—seduced by the views, the beaches, and the weather—sooner or later begin wistfully asking about their own chances of becoming residents. To soften their envy, I point out that they’d eventually tire of the easy life and the “tyranny of distance.” As we stroll the fern groves teeming with colorful parrots, or dine on the edge of the sparkling harbor, they nod unconvincingly and size me up for signs of sunstroke.",
    "The wealth of the world has a New York address. It piles up in buildings on land that is laced with gold. And perhaps nowhere is the essence of New York more evident than in Greenwich Village—for it is a microcosm of all that New York has become, and in its story is the story of a great city."]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (attractions.count)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstViewControllerTableViewCell
        cell.myImage.image = UIImage(named: (attractions[indexPath.row] + ".jpg"))
        cell.myHead.text = titles[indexPath.row]
        cell.myBody.text = briefIntro[indexPath.row]
        return (cell)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

