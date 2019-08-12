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
        Lcom/nuance/swype/input/InputFieldInfo$1;,
        Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;
    }
.end annotation


# static fields
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
.field private final DEBUGLOG:Z

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
    const-string v0, "InputFieldInfo"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/InputFieldInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->DEBUGLOG:Z

    .line 88
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->web_email_fields:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->WebTextEmailEntries:[Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->web_password_fields:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->WebTextPasswordEntries:[Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    .line 92
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    .line 96
    return-void
.end method

.method private getActionLabelFromResource(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "actionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 453
    packed-switch p1, :pswitch_data_0

    .line 479
    :cond_0
    :goto_0
    return-object v0

    .line 473
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 453
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
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "searchField":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v0, 0x1

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const/4 v0, 0x1

    .line 303
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
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "webEmail":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_1

    .line 270
    const/4 v0, 0x1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebEditText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
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
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "webPassword":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    .line 284
    const/4 v0, 0x1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->WebTextPasswordEntries:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;->matchUrlPrefixes(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private logEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method private matchUrlPrefixes(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "prefixes"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    move-object v6, p2

    .local v6, "arr$":[Ljava/lang/String;
    array-length v8, p2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v6, v7

    .line 308
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    return v1

    .line 307
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 312
    goto :goto_1
.end method

.method public static noFullscreenMode(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 406
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
    .line 587
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/InputFieldInfo$LogCatDump;-><init>(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputFieldInfo$1;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public getActionId()I
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v1, 0xff

    .line 506
    .local v0, "actionId":I
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 507
    const/4 v0, 0x1

    .line 513
    .end local v0    # "actionId":I
    :cond_0
    :goto_0
    return v0

    .line 508
    .restart local v0    # "actionId":I
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    goto :goto_0
.end method

.method public getActionLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getActionId()I

    move-result v0

    .line 489
    .local v0, "actionId":I
    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    .line 490
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 497
    :goto_0
    return-object v1

    .line 494
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabelFromResource(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getFieldId()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 443
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public getIME()Lcom/nuance/swype/input/IME;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method public getImeActionType()I
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff    # 2.0000608f

    and-int/2addr v0, v1

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return v0
.end method

.method public getInputClass()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v0, "password"

    .line 550
    .local v0, "textInputType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 522
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    const-string v0, "email address"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailSubjectField()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    const-string v0, "email subject"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 526
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    const-string v0, "web address"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 528
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 529
    const-string v0, "person name"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 530
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 531
    const-string v0, "short message"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 532
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isLongMessageField()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 533
    const-string v0, "long message"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 534
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebEditText()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 535
    const-string v0, "web text"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 536
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPostalAddress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 537
    const-string v0, "postal address"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 538
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isDateTimeField()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 539
    const-string v0, "date time"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 540
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 541
    const-string v0, "numbers"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 542
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 543
    const-string v0, "phone number"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 544
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 545
    const-string v0, "web search"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0

    .line 547
    .end local v0    # "textInputType":Ljava/lang/String;
    :cond_c
    const-string v0, "text"

    .restart local v0    # "textInputType":Ljava/lang/String;
    goto :goto_0
.end method

.method public getInputVariant()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 566
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 574
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isAcitonGoField()Z
    .locals 2

    .prologue
    .line 558
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
    .line 336
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
    .line 328
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
    .line 340
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
    .line 388
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
    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "com.nuance.swype.type=edit_dictionary"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmailAddressField()Z
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

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
    .line 373
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isEquivalentTo(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

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

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFieldWithFilterList()Z
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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

    .line 221
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
    .line 209
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isSamsungSNote()Z

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

.method public isIpField()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "inputType=ipAddress"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isKnownClass()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 213
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v0

    .line 214
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
    .line 368
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "inputType=month_edittext"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.calendar"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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
    .line 344
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
    .line 353
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "nm"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "noMicrophoneKey"

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
    .line 332
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
    .line 392
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
    .line 396
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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
    .line 239
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
    .line 245
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
    .line 257
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
    .line 401
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
    .line 358
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 378
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "inputType=PredictionOff"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSamsungSNote()Z
    .locals 2

    .prologue
    .line 188
    const-string v0, "com.samsung.android.snote"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSearchField()Z
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isLikelySearchField()Z

    move-result v0

    return v0
.end method

.method public isShortMessageField()Z
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "showCandidatesImmediately"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTextPasswordField()Z
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEnablePredictionForPassword()Z

    move-result v0

    if-eqz v0, :cond_1

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
    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    const-string v1, "xt9.com.nuance.udbeditor.alpha.substitution"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isURLField()Z
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

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

.method public isWebEditText()Z
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 554
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

.method public noFullscreenMode()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v0}, Lcom/nuance/swype/input/InputFieldInfo;->noFullscreenMode(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    return v0
.end method

.method public setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 100
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
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

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 112
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->privateOptions:Ljava/util/Set;

    .line 117
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void

    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public specifiesNoEnterAction()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 435
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->getImeActionType()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suggestionCompletionEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputFieldInfo;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public targetsAtLeast(I)Z
    .locals 1
    .param p1, "ver"    # I

    .prologue
    .line 124
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
    .line 229
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isMonthEditText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputFieldInfo;->isSamsungSNote()Z

    move-result v0

    if-nez v0, :cond_1

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
    .line 225
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
