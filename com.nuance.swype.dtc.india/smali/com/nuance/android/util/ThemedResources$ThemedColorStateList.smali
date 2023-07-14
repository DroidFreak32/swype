.class final Lcom/nuance/android/util/ThemedResources$ThemedColorStateList;
.super Ljava/lang/Object;
.source "ThemedResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/util/ThemedResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemedColorStateList"
.end annotation


# direct methods
.method public static createFromXml(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/res/ColorStateList;
    .locals 27
    .param p0, "themedContext"    # Landroid/content/Context;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .line 93
    .local v8, "eventType":I
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 94
    .local v6, "colors":[I
    const/16 v20, 0x14

    const/16 v21, 0x20

    filled-new-array/range {v20 .. v21}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[I

    .line 95
    .local v18, "states":[[I
    const/4 v13, 0x0

    .line 96
    .local v13, "itemCount":I
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    .line 97
    .local v12, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_4

    .line 98
    packed-switch v8, :pswitch_data_0

    .line 137
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 101
    const-string/jumbo v21, "item"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 105
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    .line 106
    .local v3, "attrCount":I
    const/4 v14, 0x0

    .line 107
    .local v14, "j":I
    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 109
    .local v17, "stateSpec":[I
    const/4 v11, 0x0

    .local v11, "i":I
    move v15, v14

    .end local v14    # "j":I
    .local v15, "j":I
    :goto_2
    if-ge v11, v3, :cond_3

    .line 110
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "attrName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "attrValue":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeNameResource(I)I

    move-result v16

    .line 113
    .local v16, "stateResId":I
    sget-object v20, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "\tattrName: %s, attrValue: %s, nameResource %d [%X]"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v4, v24, v25

    const/16 v25, 0x1

    aput-object v5, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 115
    const-string/jumbo v20, "color"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 116
    sget-object v20, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "Assigning color"

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 117
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    const-string/jumbo v20, "?"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 118
    sget-object v20, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "getting themes attr"

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 120
    const/16 v20, 0x1

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 121
    .local v19, "themeAttr":I
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v20

    aput v20, v6, v13

    .line 122
    sget-object v20, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "ColorStateListParser: themed value is "

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aget v23, v6, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v15

    .line 109
    .end local v15    # "j":I
    .end local v16    # "stateResId":I
    .end local v19    # "themeAttr":I
    .restart local v14    # "j":I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move v15, v14

    .end local v14    # "j":I
    .restart local v15    # "j":I
    goto/16 :goto_2

    .line 123
    .restart local v16    # "stateResId":I
    :catch_0
    move-exception v7

    .line 124
    .local v7, "e":Ljava/lang/NumberFormatException;
    sget-object v20, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "ColorStateListParser: exception: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move v14, v15

    .line 125
    .end local v15    # "j":I
    .restart local v14    # "j":I
    goto :goto_3

    .line 128
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "j":I
    .restart local v15    # "j":I
    :cond_1
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "j":I
    .restart local v14    # "j":I
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v11, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v20

    if-eqz v20, :cond_2

    .end local v16    # "stateResId":I
    :goto_4
    aput v16, v17, v15

    goto :goto_3

    .restart local v16    # "stateResId":I
    :cond_2
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    goto :goto_4

    .line 133
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "attrValue":Ljava/lang/String;
    .end local v14    # "j":I
    .end local v16    # "stateResId":I
    .restart local v15    # "j":I
    :cond_3
    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v17

    .line 134
    aput-object v17, v18, v13

    .line 135
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 140
    .end local v3    # "attrCount":I
    .end local v11    # "i":I
    .end local v15    # "j":I
    .end local v17    # "stateSpec":[I
    :cond_4
    sget-object v20, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "Number of items in the color state list are: "

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-interface/range {v20 .. v21}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 142
    new-array v9, v13, [I

    .line 143
    .local v9, "finalColors":[I
    new-array v10, v13, [[I

    .line 144
    .local v10, "finalStates":[[I
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v9, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v10, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    new-instance v20, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v20

    invoke-direct {v0, v10, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v20

    .end local v9    # "finalColors":[I
    .end local v10    # "finalStates":[[I
    .restart local v3    # "attrCount":I
    .restart local v4    # "attrName":Ljava/lang/String;
    .restart local v5    # "attrValue":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "stateResId":I
    .restart local v17    # "stateSpec":[I
    :cond_5
    move v14, v15

    .end local v15    # "j":I
    .restart local v14    # "j":I
    goto/16 :goto_3

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
