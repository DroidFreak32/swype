.class public Lcom/nuance/swype/input/InputFieldInfo;
.super Ljava/lang/Object;
.source "InputFieldInfo.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;
    }
.end annotation


# static fields
.field private static final DEBUGLOG:Z = false

.field public static final INPUT_TYPE_DATE_TIME:Ljava/lang/String; = "date time"

.field public static final INPUT_TYPE_EMAIL_ADDRESS:Ljava/lang/String; = "email address"

.field public static final INPUT_TYPE_EMAIL_SUBJECT:Ljava/lang/String; = "email subject"

.field public static final INPUT_TYPE_LONG_MESSAGE:Ljava/lang/String; = "long message"

.field public static final INPUT_TYPE_NUMBERS:Ljava/lang/String; = "numbers"

.field public static final INPUT_TYPE_PASSWORD:Ljava/lang/String; = "password"

.field public static final INPUT_TYPE_PERSON_NAME:Ljava/lang/String; = "person name"

.field public static final INPUT_TYPE_PHONE_NUMBER:Ljava/lang/String; = "phone number"

.field public static final INPUT_TYPE_POSTAL_ADDRESS:Ljava/lang/String; = "postal address"

.field public static final INPUT_TYPE_SHORT_MESSAGE:Ljava/lang/String; = "short message"

.field public static final INPUT_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final INPUT_TYPE_WEB_ADDRESS:Ljava/lang/String; = "web address"

.field public static final INPUT_TYPE_WEB_SEARCH:Ljava/lang/String; = "web search"

.field public static final INPUT_TYPE_WEB_TEXT:Ljava/lang/String; = "web text"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final WebTextEmailEntries:[Ljava/lang/String;

.field private final WebTextPasswordEntries:[Ljava/lang/String;

.field private appInfo:Landroid/content/pm/ApplicationInfo;

.field mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mIME:Lcom/nuance/swype/input/IME;

.field private privateOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->web_email_fields:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->WebTextEmailEntries:[Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->web_password_fields:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->WebTextPasswordEntries:[Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    .line 90
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    .line 94
    return-void
.end method

.method private getActionLabelFromResource(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "actionId"    # I

    .prologue
    .line 442
    packed-switch p1, :pswitch_data_0

    .line 464
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLikelySearchField()Z
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "searchField":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    const/4 v0, 0x1

    .line 309
    :cond_1
    return v0
.end method

.method private isLikelyWebTextEmail()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "webEmail":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_1

    .line 276
    const/4 v0, 0x1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebEditText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->WebTextEmailEntries:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;->matchUrlPrefixes(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isLikelyWebTextPassword()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "webPassword":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    .line 290
    const/4 v0, 0x1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->WebTextPasswordEntries:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;->matchUrlPrefixes(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private logEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 8
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[actionId]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 51
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[actionLabel]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 52
    sget-object v4, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[extras]"

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 53
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[fieldId]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 54
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[fieldName]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 55
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[hintText]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[imeOptions]0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[inputType]0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 58
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[inputType](class) 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 59
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[inputType](var) 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v6, v6, 0xff0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 60
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[initialCapsMode]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 61
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[initialSelEnd]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 62
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[initialSelStart]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[packageName]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 64
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[privateImeOptions]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 66
    const/high16 v1, 0x10000000

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_1

    move v0, v2

    .line 67
    .local v0, "noExtractUi":Z
    :goto_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 69
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "no extract ui: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 72
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pw: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; num: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isIpField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 77
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; comp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 78
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; no sug: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; ac on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isAutoCorrectionOnField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; ml "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isMultilineField()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 72
    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 82
    sget-object v1, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getActionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; no enter action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 83
    return-void

    .line 52
    .end local v0    # "noExtractUi":Z
    :cond_0
    const-string/jumbo v1, "null"

    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 66
    goto/16 :goto_1

    .restart local v0    # "noExtractUi":Z
    :cond_2
    move v2, v3

    .line 82
    goto :goto_2
.end method

.method private matchUrlPrefixes(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "prefixes"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    array-length v7, p2

    move v6, v2

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, p2, v6

    .line 314
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    return v1

    .line 313
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 318
    goto :goto_1
.end method

.method public static noFullscreenMode(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 418
    if-eqz p0, :cond_1

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x2000000

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;-><init>(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputFieldInfo$1;)V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public getActionId()I
    .locals 3

    .prologue
    .line 490
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v1, 0xff

    .line 491
    .local v0, "actionId":I
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 492
    const/4 v0, 0x1

    .line 498
    .end local v0    # "actionId":I
    :cond_0
    :goto_0
    return v0

    .line 493
    .restart local v0    # "actionId":I
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    goto :goto_0
.end method

.method public getActionLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getActionId()I

    move-result v0

    .line 474
    .local v0, "actionId":I
    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    .line 475
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 482
    :goto_0
    return-object v1

    .line 479
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabelFromResource(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 482
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getFieldId()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 432
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public getIME()Lcom/nuance/swype/input/IME;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method public getImeActionType()I
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff    # 2.0000608f

    and-int/2addr v0, v1

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return v0
.end method

.method public getInputClass()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const-string/jumbo v0, "password"

    .line 535
    .local v0, "textInputType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 507
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    const-string/jumbo v0, "email address"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailSubjectField()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    const-string/jumbo v0, "email subject"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 511
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    const-string/jumbo v0, "web address"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 513
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 514
    const-string/jumbo v0, "person name"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 516
    const-string/jumbo v0, "short message"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isLongMessageField()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 518
    const-string/jumbo v0, "long message"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 519
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebEditText()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 520
    const-string/jumbo v0, "web text"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 521
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPostalAddress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 522
    const-string/jumbo v0, "postal address"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 523
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isDateTimeField()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 524
    const-string/jumbo v0, "date time"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 525
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 526
    const-string/jumbo v0, "numbers"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 528
    const-string/jumbo v0, "phone number"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 529
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 530
    const-string/jumbo v0, "web search"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 532
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_c
    const-string/jumbo v0, "text"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0
.end method

.method public getInputVariant()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 559
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isAcitonGoField()Z
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getImeActionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCorrectionOn()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCorrectionOnField()Z
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompletionField()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDateTimeField()Z
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditDictionaryField()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "com.nuance.swype.type=edit_dictionary"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmailAddressField()Z
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isLikelyWebTextEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailSubjectField()Z
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmoticonInputDisabled()Z
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "disableEmoticonInput=true"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEquivalentTo(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFieldWithFilterList()Z
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputTextClass()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isKnownClass()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputTypeNull()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvisiblePasswordField()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v2

    const/16 v3, 0x90

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    .line 262
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEnablePredictionForPassword()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 263
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 262
    goto :goto_0

    :cond_1
    move v0, v1

    .line 263
    goto :goto_1
.end method

.method public isIpField()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "inputType=ipAddress"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isKnownClass()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v0

    .line 213
    .local v0, "cls":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLongMessageField()Z
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMonthEditText()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "inputType=month_edittext"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.android.calendar"

    .line 181
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultilineField()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNameField()Z
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoMicrophone()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "nm"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "noMicrophoneKey"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoSuggestionOnField()Z
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberField()Z
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberPasswordField()Z
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumericModeField()Z
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isIpField()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumericPasswordField()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordField()Z
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isTextPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericPasswordField()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneNumberField()Z
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneticField()Z
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPostalAddress()Z
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPredictionOffField()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "inputType=PredictionOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSamsungSNote()Z
    .locals 2

    .prologue
    .line 187
    const-string/jumbo v0, "com.samsung.android.snote"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSearchField()Z
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isLikelySearchField()Z

    move-result v0

    return v0
.end method

.method public isShortMessageField()Z
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowCandidatesImmediately()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "showCandidatesImmediately"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTextPasswordField()Z
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    .line 251
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEnablePredictionForPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isLikelyWebTextPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDBSubstitutionField()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "xt9.com.nuance.udbeditor.alpha.substitution"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isURLField()Z
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isURLWithSearchField()Z
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isAcitonGoField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceDisabled()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string/jumbo v1, "disableVoiceInput=true"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWebEditText()Z
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebSearchField()Z
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getImeActionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 98
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/InputFieldInfo;->logEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 110
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    .line 120
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return-void

    .line 115
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public targetsAtLeast(I)Z
    .locals 1
    .param p1, "ver"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public textInputFieldWithSuggestionDisabled()Z
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isMonthEditText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public textInputFieldWithSuggestionEnabled()Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
