//
//  MessageLayoutAttributes.swift
//  ChatKit
//
//  Created by chenwei on 2017/10/13.
//

import UIKit

class MessageLayoutAttributes: UICollectionViewLayoutAttributes {

    var avaterFrame: CGRect
    
    var usernameFrame: CGRect
    // 内容部分
    var messageContainerFrame: CGRect
    
    var messageContainerInsets: UIEdgeInsets
    
    var errorFrame: CGRect
    
    var activityFrame: CGRect
    
    public override init() {
        avaterFrame = CGRect.zero
        usernameFrame = CGRect.zero
        messageContainerFrame = CGRect.zero
        messageContainerInsets = UIEdgeInsets.zero
        errorFrame = CGRect.zero
        activityFrame = CGRect.zero
        super.init()
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let copiedAttributes = super.copy(with: zone) as? MessageLayoutAttributes else {
            return super.copy(with: zone)
        }
        
        copiedAttributes.avaterFrame = avaterFrame
        copiedAttributes.usernameFrame = usernameFrame
        copiedAttributes.messageContainerFrame = messageContainerFrame
        copiedAttributes.messageContainerInsets = messageContainerInsets
        
        copiedAttributes.errorFrame = errorFrame
        copiedAttributes.activityFrame = activityFrame
        
        return copiedAttributes
    }
    
    
}
