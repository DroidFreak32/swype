.class public Lcom/nuance/swype/input/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"


# static fields
.field private static final TAG_GESTURE:Ljava/lang/String; = "Gesture"

.field private static final TAG_PATH:Ljava/lang/String; = "Path"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private context:Landroid/content/Context;

.field private gestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "GestureManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/GestureManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/GestureManager;->gestures:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/nuance/swype/input/GestureManager;->context:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public getGestures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/GestureManager;->gestures:Ljava/util/List;

    return-object v0
.end method

.method protected getIntValue(Landroid/util/AttributeSet;)I
    .locals 4
    .param p1, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    iget-object v2, p0, Lcom/nuance/swype/input/GestureManager;->context:Landroid/content/Context;

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->Gesture:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/nuance/swype/input/R$styleable;->Gesture_gestureInt:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 141
    .local v1, "code":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return v1
.end method

.method protected getStringValue(Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 4
    .param p1, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/nuance/swype/input/GestureManager;->context:Landroid/content/Context;

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->Gesture:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/nuance/swype/input/R$styleable;->Gesture_gestureString:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    return-object v1
.end method

.method public loadGestures()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/GestureManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$xml;->gestures:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/GestureManager;->loadGestures(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    return v0
.end method

.method protected loadGestures(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 78
    iget-object v10, p0, Lcom/nuance/swype/input/GestureManager;->gestures:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "currentValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v2, "currentGesture":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "event":I
    if-eq v4, v8, :cond_2

    .line 86
    const/4 v10, 0x2

    if-ne v4, v10, :cond_4

    .line 88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "tag":Ljava/lang/String;
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 91
    .local v0, "attr":Landroid/util/AttributeSet;
    const-string v10, "Gesture"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/GestureManager;->getIntValue(Landroid/util/AttributeSet;)I

    move-result v3

    goto :goto_0

    .line 95
    :cond_1
    const-string v10, "Path"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/GestureManager;->getIntValue(Landroid/util/AttributeSet;)I

    move-result v10

    int-to-short v1, v10

    .line 99
    .local v1, "code":S
    if-eqz v1, :cond_3

    .line 100
    int-to-char v10, v1

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "attr":Landroid/util/AttributeSet;
    .end local v1    # "code":S
    .end local v4    # "event":I
    .end local v7    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 127
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/nuance/swype/input/GestureManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v10, "Error reading gestures file"

    invoke-virtual {v8, v10, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v8, v9

    .line 130
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_2
    return v8

    .line 104
    .restart local v0    # "attr":Landroid/util/AttributeSet;
    .restart local v1    # "code":S
    .restart local v4    # "event":I
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/GestureManager;->getStringValue(Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    .end local v0    # "attr":Landroid/util/AttributeSet;
    .end local v1    # "code":S
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x3

    if-ne v4, v10, :cond_0

    .line 112
    const-string v10, "Gesture"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 117
    iget-object v10, p0, Lcom/nuance/swype/input/GestureManager;->gestures:Ljava/util/List;

    new-instance v11, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;

    int-to-short v12, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;-><init>(S[C)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    const/4 v3, 0x0

    goto :goto_0
.end method
