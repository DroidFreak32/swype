.class public final Lcom/nuance/android/util/ColorStateListParser;
.super Lcom/nuance/android/util/XmlResourceParserWrapper;
.source "ColorStateListParser.java"


# instance fields
.field private final imeApp:Lcom/nuance/swype/input/IMEApplication;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)V
    .locals 1
    .param p1, "target"    # Landroid/content/res/XmlResourceParser;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/nuance/android/util/XmlResourceParserWrapper;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 13
    invoke-static {p2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/util/ColorStateListParser;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 14
    return-void
.end method


# virtual methods
.method public final getAttributeIntValue(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v4, 0x1

    .line 18
    invoke-super {p0, p1, p2}, Lcom/nuance/android/util/XmlResourceParserWrapper;->getAttributeIntValue(II)I

    move-result v0

    .line 21
    .local v0, "result":I
    if-ne v0, p2, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/nuance/android/util/ColorStateListParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "themeAttr":I
    iget-object v3, p0, Lcom/nuance/android/util/ColorStateListParser;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 32
    .end local v1    # "themeAttr":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 28
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
