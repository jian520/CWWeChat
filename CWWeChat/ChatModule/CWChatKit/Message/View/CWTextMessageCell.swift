//
//  CWTextMessageCell.swift
//  CWWeChat
//
//  Created by wei chen on 2017/3/31.
//  Copyright © 2017年 cwcoder. All rights reserved.
//

import UIKit

class CWTextMessageCell: CWChatMessageCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func setup() {
        super.setup()
        addGeneralView()
        self.messageContentView.addSubview(self.messageLabel)
    }
    
    override func updateMessage(_ messageModel: CWChatMessageModel) {
        super.updateMessage(messageModel)
        
        // 消息实体
        let message = messageModel.message
        
        let content = (message.messageBody as! CWTextMessageBody).text
        messageLabel.attributedText = NSAttributedString(string: content,
                                                         attributes: textAttributes)
        
        // 是自己的
        if message.direction == .send {
            let edge = ChatCellUI.right_edge_insets
            messageLabel.snp.makeConstraints { (make) in
                make.edges.equalTo(edge)
            }
            
        } else {
            
            let edge = ChatCellUI.left_edge_insets
            messageLabel.snp.makeConstraints { (make) in
                make.edges.equalTo(edge)
            }
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // 展示文本
    fileprivate var messageLabel: UILabel = {
        let messageLabel = UILabel()
        messageLabel.font = UIFont.fontTextMessageText()
        messageLabel.numberOfLines = 0
        messageLabel.backgroundColor = UIColor.orange
        return messageLabel
    }()
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
