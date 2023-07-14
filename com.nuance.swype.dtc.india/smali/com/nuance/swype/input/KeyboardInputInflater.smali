.class public Lcom/nuance/swype/input/KeyboardInputInflater;
.super Ljava/lang/Object;
.source "KeyboardInputInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    }
.end annotation


# static fields
.field public static final ALPHA_HANDWRITING:Ljava/lang/String; = "Alpha.HandWriting"

.field public static final ALPHA_KEYBOARDINPUT:Ljava/lang/String; = "Alpha.KeyboardInput"

.field public static final CHINESEFS_HANDWRITING:Ljava/lang/String; = "Chinesefs.handwriting"

.field public static final CHINESE_HANDWRITING:Ljava/lang/String; = "Chinese.HandWriting"

.field public static final CHINESE_INPUT:Ljava/lang/String; = "Chinese.input"

.field public static final JAPANESE_HANDWRITING:Ljava/lang/String; = "Japanese.HandWriting"

.field public static final JAPANESE_INPUT:Ljava/lang/String; = "Japanese.Input"

.field public static final KOREAN_HANDWRITING:Ljava/lang/String; = "Korean.HandWriting"

.field public static final KOREAN_INPUT:Ljava/lang/String; = "Korean.Input"

.field public static final NO_INPUTVIEW:Ljava/lang/String; = "NO_VIEW"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private ime:Lcom/nuance/swype/input/IME;

.field private final inputViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "KeyboardInputInflater"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardInputInflater;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 29
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardInputInflater;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    .line 68
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    .line 69
    return-void
.end method

.method private inflate(I)Landroid/view/View;
    .locals 3
    .param p1, "layoutId"    # I

    .prologue
    .line 312
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 313
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 316
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 319
    return-object v1
.end method

.method private inflateAlphaHandwritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 7

    .prologue
    .line 176
    sget v4, Lcom/nuance/swype/input/R$layout;->alpha_handwriting_container:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .local v1, "container":Landroid/view/View;
    move-object v2, v1

    .line 177
    check-cast v2, Lcom/nuance/swype/input/AbstractHandWritingContainer;

    .line 178
    .local v2, "hwrContainer":Lcom/nuance/swype/input/AbstractHandWritingContainer;
    invoke-virtual {v2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->initViews()V

    .line 180
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    .line 181
    .local v0, "alphaInput":Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getT9WriteAlphaSession()Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v3

    .line 182
    .local v3, "t9write":Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isInstantGestureEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->enableInstantGesture(Z)V

    .line 183
    invoke-virtual {v2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v3, v6}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 184
    new-instance v4, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-direct {v4, v1, v5, v0, v3}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v4
.end method

.method private inflateAlphaKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 5

    .prologue
    .line 168
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    .line 169
    .local v0, "alphaInput":Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    sget v2, Lcom/nuance/swype/input/R$layout;->alpha_input:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateSimpleKeyboard(ILcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v1

    .line 170
    .local v1, "holder":Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$000(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 171
    return-object v1
.end method

.method private inflateChineseFSHandWritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 7

    .prologue
    .line 208
    sget v4, Lcom/nuance/swype/input/R$layout;->chinese_fs_handwriting_container:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v2

    .local v2, "container":Landroid/view/View;
    move-object v1, v2

    .line 209
    check-cast v1, Lcom/nuance/swype/input/AbstractHandWritingContainer;

    .line 210
    .local v1, "cnFScontainer":Lcom/nuance/swype/input/AbstractHandWritingContainer;
    invoke-virtual {v1}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->initViews()V

    .line 212
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 214
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 215
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getT9WriteChineseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 218
    .local v3, "t9write":Lcom/nuance/input/swypecorelib/T9WriteChinese;
    invoke-virtual {v1}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    .line 219
    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    .line 218
    invoke-virtual {v4, v5, v0, v3, v6}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 220
    new-instance v4, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-direct {v4, v2, v5, v0, v3}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v4
.end method

.method private inflateChineseHandWriting()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 7

    .prologue
    .line 225
    sget v4, Lcom/nuance/swype/input/R$layout;->chinese_handwriting_container:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v2

    .local v2, "container":Landroid/view/View;
    move-object v0, v2

    .line 227
    check-cast v0, Lcom/nuance/swype/input/AbstractHandWritingContainer;

    .line 228
    .local v0, "chHWcontainer":Lcom/nuance/swype/input/AbstractHandWritingContainer;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->initViews()V

    .line 230
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    .line 233
    .local v1, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 234
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 235
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getT9WriteChineseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 237
    .local v3, "t9write":Lcom/nuance/input/swypecorelib/T9WriteChinese;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    .line 238
    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    .line 237
    invoke-virtual {v4, v5, v1, v3, v6}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 239
    new-instance v4, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-direct {v4, v2, v5, v1, v3}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v4
.end method

.method private inflateChineseKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 7

    .prologue
    .line 189
    sget v4, Lcom/nuance/swype/input/R$layout;->chinese_onestep_pinyin_container:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .local v1, "container":Landroid/view/View;
    move-object v2, v1

    .line 191
    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    .line 192
    .local v2, "onesteppinyinContainer":Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->initViews()V

    .line 194
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 197
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getT9WriteChineseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 200
    .local v3, "t9write":Lcom/nuance/input/swypecorelib/T9WriteChinese;
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    .line 201
    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    .line 200
    invoke-virtual {v4, v5, v0, v3, v6}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 202
    new-instance v4, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-direct {v4, v1, v5, v0, v3}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v4
.end method

.method private inflateJapaneseHandwritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 7

    .prologue
    .line 282
    sget v4, Lcom/nuance/swype/input/R$layout;->japanese_handwriting_container:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .local v1, "container":Landroid/view/View;
    move-object v0, v1

    .line 283
    check-cast v0, Lcom/nuance/swype/input/AbstractHandWritingContainer;

    .line 284
    .local v0, "JpContainer":Lcom/nuance/swype/input/AbstractHandWritingContainer;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->initViews()V

    .line 286
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreJapaneseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v2

    .line 289
    .local v2, "japaneseInput":Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 290
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 291
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getT9WriteJapaneseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    .line 292
    .local v3, "t9write":Lcom/nuance/input/swypecorelib/T9WriteJapanese;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    .line 293
    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    .line 292
    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 294
    new-instance v4, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-direct {v4, v1, v5, v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v4
.end method

.method private inflateJapaneseKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 6

    .prologue
    .line 268
    sget v3, Lcom/nuance/swype/input/R$layout;->japanese_wordlist_page:I

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v0

    .local v0, "container":Landroid/view/View;
    move-object v2, v0

    .line 269
    check-cast v2, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    .line 270
    .local v2, "wordpageContainer":Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;
    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->initViews()V

    .line 272
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 273
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreJapaneseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v1

    .line 275
    .local v1, "japaneseInput":Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    .line 276
    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    .line 275
    invoke-virtual {v3, v4, v1, v5}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 277
    new-instance v3, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v3
.end method

.method private inflateKoreanHandwritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 7

    .prologue
    .line 251
    sget v4, Lcom/nuance/swype/input/R$layout;->korean_handwriting_container:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v0

    .local v0, "container":Landroid/view/View;
    move-object v2, v0

    .line 252
    check-cast v2, Lcom/nuance/swype/input/AbstractHandWritingContainer;

    .line 253
    .local v2, "krContainer":Lcom/nuance/swype/input/AbstractHandWritingContainer;
    invoke-virtual {v2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->initViews()V

    .line 255
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    .line 258
    .local v1, "koreanInput":Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 259
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v4

    .line 260
    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getT9WriteKoreanSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteKorean;

    .line 261
    .local v3, "t9write":Lcom/nuance/input/swypecorelib/T9WriteKorean;
    invoke-virtual {v2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    .line 262
    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    .line 261
    invoke-virtual {v4, v5, v1, v3, v6}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 263
    new-instance v4, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1, v3}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v4
.end method

.method private inflateKoreanKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 5

    .prologue
    .line 243
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    .line 244
    .local v1, "koreanInput":Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    sget v2, Lcom/nuance/swype/input/R$layout;->korean_input:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateSimpleKeyboard(ILcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    .line 245
    .local v0, "holder":Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$000(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 246
    return-object v0
.end method

.method private inflateSimpleKeyboard(ILcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    .locals 3
    .param p1, "layoutId"    # I
    .param p2, "coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 301
    check-cast v0, Lcom/nuance/swype/input/InputView;

    .line 305
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    new-instance v2, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-direct {v2, v1, v0, p2, p3}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;-><init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V

    return-object v2
.end method


# virtual methods
.method public callAllInputViewToDestroy(Z)V
    .locals 5
    .param p1, "destroyCore"    # Z

    .prologue
    .line 91
    sget-object v1, Lcom/nuance/swype/input/KeyboardInputInflater;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "#callAllInputViewToDestroy() destroyCore = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$000(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$100(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->destroySession()V

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$200(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/input/swypecorelib/T9Write;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$200(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/input/swypecorelib/T9Write;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9Write;->destroySession()V

    goto :goto_0

    .line 102
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;>;"
    :cond_1
    return-void
.end method

.method public callAllInputViewToFinish()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$000(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public getAllInputViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputView;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$000(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;>;"
    :cond_0
    return-object v1
.end method

.method public getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;
    .locals 3
    .param p1, "inputViewName"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$000(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 113
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isDrawBufferManagerSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getDrawBufferManager()Lcom/nuance/swype/input/DrawBufferManager;

    move-result-object v0

    .line 115
    .local v0, "bufferManager":Lcom/nuance/swype/input/DrawBufferManager;
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/InputView;->setDrawBufferManager(Lcom/nuance/swype/input/DrawBufferManager;)V

    .line 120
    .end local v0    # "bufferManager":Lcom/nuance/swype/input/DrawBufferManager;
    .end local v1    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inflateKeyboardInput(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "inputViewName"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->checkThemeChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToFinish()V

    .line 131
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->resetContainerView()V

    .line 132
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->reset()V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    .line 136
    .local v0, "holder":Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
    if-eqz v0, :cond_1

    .line 137
    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$300(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Landroid/view/View;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 140
    :cond_1
    const-string/jumbo v1, "Alpha.KeyboardInput"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateAlphaKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->access$300(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateAlphaHandwritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_3
    const-string/jumbo v1, "Chinese.input"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateChineseKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_4
    const-string/jumbo v1, "Chinese.HandWriting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateChineseHandWriting()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 148
    :cond_5
    const-string/jumbo v1, "Chinesefs.handwriting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateChineseFSHandWritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_6
    const-string/jumbo v1, "Korean.Input"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateKoreanKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 152
    :cond_7
    const-string/jumbo v1, "Korean.HandWriting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 153
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateKoreanHandwritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_8
    const-string/jumbo v1, "Japanese.Input"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 155
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateJapaneseKeyboardInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 156
    :cond_9
    const-string/jumbo v1, "Japanese.HandWriting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 157
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateJapaneseHandwritingInput()Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid input view name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->clearPostStartEvents()V

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater;->inputViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    return-void
.end method
