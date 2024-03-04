.class public Lcom/nuance/android/compat/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# static fields
.field private static final InputConnection_getSelectedText:Ljava/lang/reflect/Method;

.field private static final InputConnection_setComposingRegion:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "getSelectedText"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/InputConnectionCompat;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    .line 25
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/InputConnectionCompat;->InputConnection_setComposingRegion:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "flags"    # I

    .prologue
    .line 42
    sget-object v0, Lcom/nuance/android/compat/InputConnectionCompat;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/nuance/android/compat/InputConnectionCompat;->invokeGetSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSelectedTextString(Landroid/view/inputmethod/InputConnection;)Ljava/lang/String;
    .locals 6
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 58
    sget-object v4, Lcom/nuance/android/compat/InputConnectionCompat;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 60
    invoke-static {p0, v5}, Lcom/nuance/android/compat/InputConnectionCompat;->invokeGetSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    .local v1, "result":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v3

    .line 65
    :cond_1
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v4, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 66
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 67
    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v2

    .line 68
    .local v2, "selection":[I
    if-eqz v2, :cond_0

    .line 69
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    aget v4, v2, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static invokeGetSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "flags"    # I

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/android/compat/InputConnectionCompat;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static invokeSetComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z
    .locals 4
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 77
    sget-object v0, Lcom/nuance/android/compat/InputConnectionCompat;->InputConnection_setComposingRegion:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z
    .locals 1
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 88
    sget-object v0, Lcom/nuance/android/compat/InputConnectionCompat;->InputConnection_setComposingRegion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/nuance/android/compat/InputConnectionCompat;->invokeSetComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
