//
//  AutoLayoutHelper.swift
//  Blind test
//
//  Created by Gauthier et Cathine on 07/06/2016.
//  Copyright © 2016 Gauthier et Cathine. All rights reserved.
//

import UIKit

//Global

func ALCConstraint(firstItem: AnyObject, firstAttribute: NSLayoutAttribute, relation: NSLayoutRelation, secondItem: AnyObject?, secondAttribute: NSLayoutAttribute, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return NSLayoutConstraint(item: firstItem, attribute: firstAttribute, relatedBy: relation, toItem: secondItem, attribute: secondAttribute, multiplier: layoutMultiplier, constant: layoutConstant)
}

//MARK : - left

//Left is left

func ALCLeftIsLeft(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCLeftIsLeftWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCLeftIsLeftWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCLeftIsLeftWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Left is Right

func ALCLeftIsRight(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCLeftIsRightWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCLeftIsRightWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCLeftIsRightWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Left is CenterX

func ALCLeftIsCenterX(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCLeftIsCenterXWithConstant(firstItem, secondItem: secondItem, layoutConstant: 0)
}

func ALCLeftIsCenterXWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Left, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterX, layoutMultiplier: 1, layoutConstant: layoutConstant)
}



//MARK : - Right

//Right is Right

func ALCRightIsRight(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCRightIsRightWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCRightIsRightWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCRightIsRightWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Right is Left

func ALCRightIsLeft(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCRightIsLeftWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCRightIsLeftWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCRightIsLeftWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

////Right is CenterX

func ALCRightIsCenterX(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCRightIsCenterXWithConstant(firstItem, secondItem: secondItem, layoutConstant: 0)
}

func ALCRightIsCenterXWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Right, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterX, layoutMultiplier: 1, layoutConstant: layoutConstant)
}



//MARK : - Top

//Top is top

func ALCTopIsTop(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCTopIsTopWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCTopIsTopWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCTopIsTopWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Top is Bottom

func ALCTopIsBottom(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCTopIsBottomWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCTopIsBottomWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCTopIsBottomWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Top is center

func ALCTopIsCenterY(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCTopIsCenterYWithConstant(firstItem, secondItem: secondItem, layoutConstant: 0)
}

func ALCTopIsCenterYWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Top, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterY, layoutMultiplier: 1, layoutConstant: layoutConstant)
}



//MARK : - Bottom

//Bottom is bottom

func ALCBottomIsBottom(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCBottomIsBottomWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCBottomIsBottomWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCBottomIsBottomWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Bottom, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Bottom is Top

func ALCBottomIsTop(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCBottomIsTopWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCBottomIsTopWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: layoutMultiplier, layoutConstant: 0)
}

func ALCBottomIsTopWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .Top, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Bottom is Center

func ALCBottomIsCenterY(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCBottomIsCenterYWithConstant(firstItem, secondItem: secondItem, layoutConstant: 0)
}

func ALCBottomIsCenterYWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Bottom, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterY, layoutMultiplier: 1, layoutConstant: layoutConstant)
}


//MARK : - CenterX

//CenterX is CenterX

func ALCCenterXIsCenterX(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterX, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCCenterXIsCenterXWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterX, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCCenterXIsCenterXWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterX, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCCenterXIsCenterXWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterX, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//CenterX is Right

func ALCCenterXIsRight(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: 0);
}

func ALCCenterXIsRightWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: layoutConstant);
}

func ALCCenterXIsRightWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCCenterXIsRightWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//CenterX is Left

func ALCCenterXIsLeft(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: 0);
}

func ALCCenterXIsLeftWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: layoutConstant);
}

func ALCCenterXIsLeftWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCCenterXIsLeftWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterX, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}



//MARK : - CenterY

//CenterY is CenterY

func ALCCenterYIsCenterY(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterY, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCCenterYIsCenterYWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterY, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCCenterYIsCenterYWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterY, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCCenterYIsCenterYWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .CenterY, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//CenterY is Right

func ALCCenterYIsRight(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: 0);
}

func ALCCenterYIsRightWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: 1, layoutConstant: layoutConstant);
}

func ALCCenterYIsRightWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCCenterYIsRightWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Right, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//CenterY is Left

func ALCCenterYIsLeft(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: 0);
}

func ALCCenterYIsLeftWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: 1, layoutConstant: layoutConstant);
}

func ALCCenterYIsLeftWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCCenterYIsLeftWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .CenterY, relation: .Equal, secondItem: secondItem, secondAttribute: .Left, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}



//MARK : - Width

//Width is Width

func ALCWidthIsWidth(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Width, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCWidthIsWidthWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Width, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCWidthIsWidthWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Width, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCWidthIsWidthWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Width, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Width is Height

func ALCWidthIsHeight(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCWidthIsHeightWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCWidthIsHeightWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCWidthIsHeightMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Width is Constant

func ALCWidthIsConstant(firstItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .Equal, secondItem: nil, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

//Comparaison

func ALCWidthIsLessThanOrEqual(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .LessThanOrEqual, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCWidthIsLessThanOrEqualConstant(firstItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .LessThanOrEqual, secondItem: nil, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCWidthIsGreaterThanOrEqual(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .GreaterThanOrEqual, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCWidthIsGreaterThanOrEqualConstant(firstItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Width, relation: .GreaterThanOrEqual, secondItem: nil, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}



//#pragma mark - Height

//Height is Height

func ALCHeightIsHeight(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCHeightIsHeightWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCHeightIsHeightWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCHeightIsHeightWithMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Height is Width

func ALCHeightIsWidth(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCHeightIsWidthWithConstant(firstItem: AnyObject, secondItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCHeightIsWidthWithMultiplier(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: layoutMultiplier, layoutConstant: 0);
}

func ALCHeightIsWidthMultiplierAndConstant(firstItem: AnyObject, secondItem: AnyObject, layoutMultiplier: CGFloat, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: layoutMultiplier, layoutConstant: layoutConstant);
}

//Height is Constant

func ALCHeightIsConstant(firstItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .Equal, secondItem: nil, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

//Comparaison

func ALCHeightIsLessThanOrEqual(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .LessThanOrEqual, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCHeightIsLessThanOrEqualConstant(firstItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .LessThanOrEqual, secondItem: nil, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}

func ALCHeightIsGreaterThanOrEqual(firstItem: AnyObject, secondItem: AnyObject) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .GreaterThanOrEqual, secondItem: secondItem, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: 0)
}

func ALCHeightIsGreaterThanOrEqualConstant(firstItem: AnyObject, layoutConstant: CGFloat) -> NSLayoutConstraint {
    return ALCConstraint(firstItem, firstAttribute: .Height, relation: .GreaterThanOrEqual, secondItem: nil, secondAttribute: .Height, layoutMultiplier: 1, layoutConstant: layoutConstant)
}



//#pragma mark - Misc

func ALCBoundsAreBounds(firstItem: AnyObject, secondItem: AnyObject) -> [NSLayoutConstraint] {
    return [ALCLeftIsLeft(firstItem, secondItem: secondItem),
			 ALCTopIsTop(firstItem, secondItem: secondItem),
			 ALCRightIsRight(firstItem, secondItem: secondItem),
			 ALCBottomIsBottom(firstItem, secondItem: secondItem)]
}

func ALCBoundsAreBoundsWithMargin(firstItem: AnyObject, secondItem: AnyObject, insets: UIEdgeInsets) -> [NSLayoutConstraint] {
    return [ALCLeftIsLeftWithConstant(firstItem, secondItem: secondItem, layoutConstant: insets.left),
			 ALCTopIsTopWithConstant(firstItem, secondItem: secondItem, layoutConstant: insets.top),
			 ALCRightIsRightWithConstant(firstItem, secondItem: secondItem, layoutConstant: -insets.right),
			 ALCBottomIsBottomWithConstant(firstItem, secondItem: secondItem, layoutConstant: -insets.bottom)]
    
}

func ALCRatioSquare(item: AnyObject) -> NSLayoutConstraint {
    return ALCWidthIsHeight(item, secondItem: item);
}

func ALCRatio(item: AnyObject, ratio: CGFloat) -> NSLayoutConstraint {
    return ALCWidthIsHeightWithMultiplier(item, secondItem: item, layoutMultiplier: ratio);
}
