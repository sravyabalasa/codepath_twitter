//
//  TweetViewController.swift
//  Twitter
//
//  Created by Sravya Balasa on 4/25/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tweetText.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var tweetText: UITextView!

    @IBAction func tweetButton(_ sender: Any) {
        if (!tweetText.text.isEmpty) {
            TwitterAPICaller.client?.postTweet(tweetString: tweetText.text!, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (Error) in
                print(Error)
                self.dismiss(animated: true, completion: nil)
            })
        }
    }

    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
