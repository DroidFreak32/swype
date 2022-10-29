.class final Landroid/support/v7/content/res/AppCompatColorStateListInflater;
.super Ljava/lang/Object;
.source "AppCompatColorStateListInflater.java"


# direct methods
.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 9
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 55
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 58
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_e

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 63
    :cond_e
    if-eq v1, v3, :cond_19

    .line 64
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1082
    :cond_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1083
    const-string/jumbo v3, "selector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1084
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": invalid color state list tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1088
    :cond_48
    invoke-static {p0, p1, v0, p2}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 67
    return-object v2
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 30
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    add-int/lit8 v13, v23, 0x1

    .line 102
    .local v13, "innerDepth":I
    const/16 v23, 0x14

    move/from16 v0, v23

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    .line 103
    .local v20, "stateSpecList":[[I
    const/16 v23, 0x14

    move/from16 v0, v23

    new-array v9, v0, [I

    .line 104
    .local v9, "colorList":[I
    const/16 v16, 0x0

    .line 106
    .local v16, "listSize":I
    :cond_16
    :goto_16
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_123

    .line 107
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .local v11, "depth":I
    if-ge v11, v13, :cond_30

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_123

    .line 108
    :cond_30
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    if-gt v11, v13, :cond_16

    .line 109
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "item"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 113
    sget-object v23, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem:[I

    .line 1164
    if-nez p3, :cond_c2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 114
    .local v5, "a":Landroid/content/res/TypedArray;
    :goto_55
    sget v23, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_color:I

    const v24, -0xff01

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 117
    .local v7, "baseColor":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 118
    .local v6, "alphaMod":F
    sget v23, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_d5

    .line 119
    sget v23, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 124
    :cond_7a
    :goto_7a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    const/4 v14, 0x0

    .line 128
    .local v14, "j":I
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v17

    .line 129
    .local v17, "numAttrs":I
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 130
    .local v19, "stateSpec":[I
    const/4 v12, 0x0

    .local v12, "i":I
    move v15, v14

    .end local v14    # "j":I
    .local v15, "j":I
    :goto_8a
    move/from16 v0, v17

    if-ge v12, v0, :cond_f2

    .line 131
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v18

    .line 132
    .local v18, "stateResId":I
    const v23, 0x10101a5

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_155

    const v23, 0x101031f

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_155

    sget v23, Landroid/support/v7/appcompat/R$attr;->alpha:I

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_155

    .line 135
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "j":I
    .restart local v14    # "j":I
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v12, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v23

    if-eqz v23, :cond_ec

    .end local v18    # "stateResId":I
    :goto_bc
    aput v18, v19, v15

    .line 130
    :goto_be
    add-int/lit8 v12, v12, 0x1

    move v15, v14

    .end local v14    # "j":I
    .restart local v15    # "j":I
    goto :goto_8a

    .line 1164
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "alphaMod":F
    .end local v7    # "baseColor":I
    .end local v12    # "i":I
    .end local v15    # "j":I
    .end local v17    # "numAttrs":I
    .end local v19    # "stateSpec":[I
    :cond_c2
    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 1165
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    goto :goto_55

    .line 120
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "alphaMod":F
    .restart local v7    # "baseColor":I
    :cond_d5
    sget v23, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_7a

    .line 121
    sget v23, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    goto :goto_7a

    .line 135
    .restart local v12    # "i":I
    .restart local v14    # "j":I
    .restart local v17    # "numAttrs":I
    .restart local v18    # "stateResId":I
    .restart local v19    # "stateSpec":[I
    :cond_ec
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    goto :goto_bc

    .line 139
    .end local v14    # "j":I
    .end local v18    # "stateResId":I
    .restart local v15    # "j":I
    :cond_f2
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v19

    .line 1169
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v7, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    .line 149
    .local v8, "color":I
    move/from16 v0, v16

    invoke-static {v9, v0, v8}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    .line 150
    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "stateSpecList":[[I
    check-cast v20, [[I

    .line 151
    .restart local v20    # "stateSpecList":[[I
    add-int/lit8 v16, v16, 0x1

    .line 152
    goto/16 :goto_16

    .line 154
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "alphaMod":F
    .end local v7    # "baseColor":I
    .end local v8    # "color":I
    .end local v11    # "depth":I
    .end local v12    # "i":I
    .end local v15    # "j":I
    .end local v17    # "numAttrs":I
    .end local v19    # "stateSpec":[I
    :cond_123
    move/from16 v0, v16

    new-array v10, v0, [I

    .line 155
    .local v10, "colors":[I
    move/from16 v0, v16

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    .line 156
    .local v21, "stateSpecs":[[I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-static {v9, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    new-instance v23, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v23

    .end local v10    # "colors":[I
    .end local v21    # "stateSpecs":[[I
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "alphaMod":F
    .restart local v7    # "baseColor":I
    .restart local v11    # "depth":I
    .restart local v12    # "i":I
    .restart local v15    # "j":I
    .restart local v17    # "numAttrs":I
    .restart local v18    # "stateResId":I
    .restart local v19    # "stateSpec":[I
    :cond_155
    move v14, v15

    .end local v15    # "j":I
    .restart local v14    # "j":I
    goto/16 :goto_be
.end method
