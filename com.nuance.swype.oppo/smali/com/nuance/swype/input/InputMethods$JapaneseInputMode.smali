.class public Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;
.super Lcom/nuance/swype/input/InputMethods$InputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JapaneseInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 2930
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 2932
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2934
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/nuance/swype/input/R$styleable;->XT9_enabled:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->mDefaultEnabled:Z

    .line 2935
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->mDefaultEnabled:Z

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2936
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2937
    return-void
.end method


# virtual methods
.method public saveAsCurrent()V
    .locals 2

    .prologue
    .line 2941
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2942
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/nuance/swype/input/InputMethods;->access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    .line 2943
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/InputMethods$Language;->access$1202(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 2944
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2948
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2949
    return-void
.end method
