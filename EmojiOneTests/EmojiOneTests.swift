//  The MIT License (MIT)
//
//  Copyright © 2017 Saurabh Rane
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import XCTest
@testable import EmojiOne

class EmojiOneTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEmojiUrlNotNull() {
        let emojiOne = EmojiOne.medal
        XCTAssertNotNil(emojiOne.url)
    }

    func testEmojiUrl() {
        let emojiOne = EmojiOne.personBiking
        let emojiOneUrl = "https://cdn.jsdelivr.net/emojione/assets/3.1/png/128/1f6b4.png"
        XCTAssertEqual(emojiOne.url, emojiOneUrl)
    }

    func testEmojiCount() {
        let count = 2666
        let emojiCount = EmojiOne.count
        XCTAssertEqual(count, emojiCount)
    }

    func testImageViewEmoji() {
        let expectation = self.expectation(description: "Waiting for Emoji")
        let imageView = UIImageView()
        imageView.setEmoji(emoji: .adultTone2)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
        XCTAssertNotNil(imageView.image)
    }

    func testLabelEmoji() {
        let expectation = self.expectation(description: "Waiting for Emoji")
        let rect = CGRect(x: 0, y: 0, width: 500, height: 100)
        let label = UILabel(frame: rect)
        label.setEmoji(prefixText: "PREFIX", emoji: .ship, postfixText: "POSTFIX")
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
        XCTAssertNotNil(label.attributedText)
    }

    func testButtonEmoji() {
        let expectation = self.expectation(description: "Waiting for Emoji")
        let rect = CGRect(x: 0, y: 0, width: 500, height: 100)
        let button = UIButton(frame: rect)
        button.setEmoji(title: "Biking: ", emoji: .personBiking, forState: .normal)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
        XCTAssertNotNil(button.imageView)
        XCTAssertEqual("Biking: ", button.title(for: .normal))
        XCTAssertEqual(UIColor.black, button.titleColor(for: .normal))
    }
}
