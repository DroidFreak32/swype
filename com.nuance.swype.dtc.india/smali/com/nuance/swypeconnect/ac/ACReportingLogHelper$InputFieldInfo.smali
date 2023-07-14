.class Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputFieldInfo"
.end annotation


# instance fields
.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method private isLikelySearchField()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isWebSearchField()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isURLField()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private isLikelyWebTextEmail()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isLikelyWebTextPassword()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public getImeActionType()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff    # 2.0000608f

    and-int/2addr v0, v1

    return v0
.end method

.method public getInputClass()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInputVariant()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    return v0
.end method

.method public isActionGoField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getImeActionType()I

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

.method public isDateTimeField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputClass()I

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

.method public isEmailAddressField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isLikelyWebTextEmail()Z

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

.method public isInputTextClass()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputClass()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isKnownClass()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKnownClass()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputClass()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongMessageField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

.method public isMultilineField()Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

.method public isNumberField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputClass()I

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

.method public isNumericPasswordField()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isTextPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isNumericPasswordField()Z

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputClass()I

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

.method public isSearchField()Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isLikelySearchField()Z

    move-result v0

    return v0
.end method

.method public isShortMessageField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

.method public isTextPasswordField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isLikelyWebTextPassword()Z

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

.method public isURLField()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getInputVariant()I

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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->getImeActionType()I

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
