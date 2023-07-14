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

.field public static final enum CURRENCY_RUPEE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

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
    .registers 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 108
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "HANDWRITING"

    invoke-direct {v0, v1, v8, v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->HANDWRITING:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "SPEECH"

    invoke-direct {v0, v1, v4, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECH:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "SWITCHABLE"

    invoke-direct {v0, v1, v5, v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SWITCHABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "SIZABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SIZABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 109
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "CURRENCY_DOLLAR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_DOLLAR:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "CURRENCY_POUND"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_POUND:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "CURRENCY_EURO"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_EURO:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 110
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "SPLITABLE"

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPLITABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "KEYBOARD"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->KEYBOARD:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 111
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "SPEECHPOP"

    const/16 v2, 0x9

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECHPOP:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string/jumbo v1, "EMOJI"

    const/16 v2, 0xa

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 112
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    const-string v1, "CURRENCY_RUPEE"

    const/16 v2, 0xb

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_RUPEE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 107
    const/16 v0, 0xc

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
    
    const/16 v1, 0xb
    
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_RUPEE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput p3, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->value:I

    .line 115
    return-void
.end method

.method public static current(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/EnumSet;
    .registers 6
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
    .line 129
    const-class v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 130
    .local v1, "settings":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->supportsHwr()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 131
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "handwriting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 132
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "handwriting_half_screen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 133
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "handwriting_full_screen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 134
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->HANDWRITING:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_48
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->shouldEnableSpeechKey(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 137
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "pinyin_nine_keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 138
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "stroke"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 139
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "zhuyin_nine_keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 140
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "quick_cangjie_nine_keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 141
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "cangjie_nine_keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 142
    :cond_99
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECH:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_9e
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "handwriting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 146
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->KEYBOARD:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_b8
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->shouldEnableSpeechKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 150
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 151
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    if-eqz v2, :cond_dc

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x900

    if-eq v2, v3, :cond_f4

    :cond_dc
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    if-eqz v2, :cond_f9

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0xda0

    if-ne v2, v3, :cond_f9

    .line 155
    :cond_f4
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPEECHPOP:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_f9
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_130

    .line 162
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v2

    if-nez v2, :cond_130

    .line 163
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 164
    if-nez v2, :cond_121

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v2

    if-eqz v2, :cond_126

    .line 165
    :cond_121
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SWITCHABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_126
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SIZABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_130
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 172
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    if-eqz v2, :cond_178

    .line 173
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x600

    if-eq v2, v3, :cond_18c

    .line 174
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x700

    if-eq v2, v3, :cond_18c

    .line 175
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x710

    if-eq v2, v3, :cond_18c

    .line 176
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x720

    if-eq v2, v3, :cond_18c

    .line 177
    :cond_178
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "stroke"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18c

    .line 178
    :cond_187
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->SPLITABLE:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_18c
    invoke-static {p0}, Lcom/nuance/swype/input/LocaleSettings;->from(Landroid/content/Context;)Lcom/nuance/swype/input/LocaleSettings;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/LocaleSettings;->getCurrencyType(Ljava/util/Locale;)I

    move-result v0

    .line 182
    .local v0, "currencyType":I
    if-nez v0, :cond_1a2

    .line 183
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 185
    :cond_1a2
    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->from(I)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 187
    return-object v1
.end method

.method public static from(I)Ljava/util/EnumSet;
    .registers 7
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
    .line 118
    const-class v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 119
    .local v1, "settings":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v4, :cond_1b

    aget-object v0, v3, v2

    .line 120
    .local v0, "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_18

    .line 121
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 124
    .end local v0    # "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    :cond_1b
    return-object v1
.end method

.method public static matchCount(Ljava/util/EnumSet;Ljava/util/EnumSet;)I
    .registers 6
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
    .line 191
    .local p0, "set1":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    .local p1, "set2":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    const/4 v0, 0x0

    .line 192
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    .line 193
    .local v1, "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 197
    .end local v1    # "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    :cond_1a
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    return-object v0
.end method
