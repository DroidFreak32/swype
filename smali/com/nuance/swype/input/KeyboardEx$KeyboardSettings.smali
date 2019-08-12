.class public final enum Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
.super Ljava/lang/Enum;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum CURRENCY_DOLLAR:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum CURRENCY_EURO:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum CURRENCY_POUND:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum HANDWRITING:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum KEYBOARD:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum SIZABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum SPEECH:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum SPEECHPOP:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum SPLITABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

.field public static final enum SWITCHABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 103
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "HANDWRITING"

    invoke-direct {v0, v1, v8, v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->HANDWRITING:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "SPEECH"

    invoke-direct {v0, v1, v4, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECH:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "SWITCHABLE"

    invoke-direct {v0, v1, v5, v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SWITCHABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "SIZABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SIZABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 104
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "CURRENCY_DOLLAR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_DOLLAR:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "CURRENCY_POUND"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_POUND:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "CURRENCY_EURO"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_EURO:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 105
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "SPLITABLE"

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPLITABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "KEYBOARD"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->KEYBOARD:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 106
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "SPEECHPOP"

    const/16 v2, 0x9

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECHPOP:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "EMOJI"

    const/16 v2, 0xa

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 102
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->HANDWRITING:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECH:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SWITCHABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SIZABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_DOLLAR:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_POUND:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_EURO:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPLITABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->KEYBOARD:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECHPOP:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->value:I

    .line 110
    return-void
.end method

.method public static current(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/EnumSet;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-class v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 125
    .local v2, "settings":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->supportsHwr()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "handwriting_half_screen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "handwriting_full_screen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->HANDWRITING:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->shouldEnableSpeechKey(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "pinyin_nine_keys"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "stroke"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "zhuyin_nine_keys"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "quick_cangjie_nine_keys"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "cangjie_nine_keys"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECH:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->KEYBOARD:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->shouldEnableSpeechKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v3

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x900

    if-eq v3, v4, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v3

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0xda0

    if-ne v3, v4, :cond_6

    .line 150
    :cond_5
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECHPOP:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_6
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 157
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v3

    if-nez v3, :cond_8

    .line 158
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    .line 159
    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    :cond_7
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SWITCHABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v3

    if-nez v3, :cond_9

    .line 165
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SIZABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_9
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v3

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_c

    :cond_a
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "stroke"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 173
    :cond_b
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPLITABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_c
    invoke-static {p0}, Lcom/nuance/swype/input/LocaleSettings;->from(Landroid/content/Context;)Lcom/nuance/swype/input/LocaleSettings;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/LocaleSettings;->getCurrencyType(Ljava/util/Locale;)I

    move-result v1

    .line 177
    .local v1, "currencyType":I
    if-nez v1, :cond_d

    .line 178
    iget v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 180
    :cond_d
    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->from(I)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 182
    return-object v2
.end method

.method public static from(I)Ljava/util/EnumSet;
    .locals 6
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 114
    .local v4, "settings":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 115
    .local v3, "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    :cond_1
    return-object v4
.end method

.method public static matchCount(Ljava/util/EnumSet;Ljava/util/EnumSet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "set1":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    .local p1, "set2":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 188
    .local v2, "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    return-object v0
.end method
