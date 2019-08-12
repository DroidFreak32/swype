.class public Lcom/nuance/swype/input/InputMethods$Layout;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# instance fields
.field private mDefaultEnabled:Z

.field private final mDisplayLayoutName:I

.field private mEnabledPrefKey:Ljava/lang/String;

.field public final mLayoutId:I

.field public final mLayoutResID:I

.field public final mParent:Lcom/nuance/swype/input/InputMethods$InputMode;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$InputMode;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v3, 0x0

    .line 3003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3004
    iput-object p2, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 3006
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3007
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/nuance/swype/input/R$styleable;->XT9_layoutId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    .line 3008
    sget v1, Lcom/nuance/swype/input/R$styleable;->XT9_layoutName:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mDisplayLayoutName:I

    .line 3009
    sget v1, Lcom/nuance/swype/input/R$styleable;->XT9_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutResID:I

    .line 3010
    sget v1, Lcom/nuance/swype/input/R$styleable;->XT9_enabled:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mDefaultEnabled:Z

    .line 3012
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3013
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->initEnabledPrefKey()V

    .line 3014
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Layout;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .locals 1
    .param p1, "layout"    # Lcom/nuance/swype/input/InputMethods$Layout;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 3016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3017
    iput-object p2, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 3018
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iput v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    .line 3019
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Layout;->mDisplayLayoutName:I

    iput v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mDisplayLayoutName:I

    .line 3020
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutResID:I

    iput v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutResID:I

    .line 3021
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Layout;->mDefaultEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mDefaultEnabled:Z

    .line 3022
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->initEnabledPrefKey()V

    .line 3023
    return-void
.end method

.method private getLanguageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v0, :cond_1

    .line 3065
    :cond_0
    const-string v0, "GLOBAL"

    .line 3067
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initEnabledPrefKey()V
    .locals 2

    .prologue
    .line 3026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$1600(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->access$1500(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    .line 3028
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 3072
    instance-of v1, p1, Lcom/nuance/swype/input/InputMethods$Layout;

    if-eqz v1, :cond_0

    .line 3073
    check-cast p1, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 3074
    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iget v2, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3076
    :cond_0
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLayoutName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3031
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mDisplayLayoutName:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3032
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v0

    .line 3035
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mDisplayLayoutName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3081
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 3056
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mDefaultEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveAsCurrent()V
    .locals 1

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getScreenOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent(I)V

    .line 3040
    return-void
.end method

.method public saveAsCurrent(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 3043
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mParent:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$1600(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/nuance/swype/input/InputMethods;->saveKeyboardLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3045
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3048
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Layout;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 3049
    return-void
.end method
