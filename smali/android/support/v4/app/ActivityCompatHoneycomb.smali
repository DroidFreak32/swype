.class public final Landroid/support/v4/app/ActivityCompatHoneycomb;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/util/CharsetUtil;
.end annotation


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Landroid/support/v4/app/Fragment;

.field next$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

.field popEnterAnim:I

.field popExitAnim:I

.field prev$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

.field removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v2, "name":Ljava/lang/StringBuilder;
    const-string v1, "Android device"

    .line 47
    .local v1, "modelName":Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 48
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    const-class v3, Landroid/os/Build;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->TABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 53
    :cond_0
    sget-object v3, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->PHONE:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 50
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cls"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "simpleName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 34
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 35
    .local v0, "end":I
    if-lez v0, :cond_2

    .line 36
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    .end local v0    # "end":I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static confine(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p0, "child"    # Landroid/graphics/Rect;
    .param p1, "parent"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 145
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    .local v0, "dx":I
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v1, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 147
    .local v1, "dy":I
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 148
    :cond_2
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 149
    const/4 v2, 0x1

    .line 151
    :cond_3
    return v2
.end method

.method public static confine(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 1
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "padding"    # I

    .prologue
    .line 162
    if-eqz p2, :cond_0

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, p2, p2, p2, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object p1

    .line 165
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static create(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 27
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/nuance/android/util/WeakReferenceHandler$WeakReferenceHandlerCallback;

    invoke-direct {v1, p0}, Lcom/nuance/android/util/WeakReferenceHandler$WeakReferenceHandlerCallback;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static disownParent(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 28
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static expand(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 227
    iget v0, p1, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/nuance/swype/inapp/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 88
    .local v0, "decodedKey":[B
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nuance/swype/inapp/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 90
    .end local v0    # "decodedKey":[B
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 92
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v2, "IABUtil/Security"

    const-string v3, "Invalid key specification."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 95
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 96
    .local v1, "e":Lcom/nuance/swype/inapp/util/Base64DecoderException;
    const-string v2, "IABUtil/Security"

    const-string v3, "Base64 decoding failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getAppThemeId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 83
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getBool(Landroid/content/res/TypedArray;)Z
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 95
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getColor(Landroid/content/res/TypedArray;)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 102
    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 104
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getDimen(Landroid/content/res/TypedArray;)F
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 120
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 126
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getRegisteredEmailAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string v8, "AccountUtil"

    invoke-static {v8}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    .line 24
    .local v6, "log":Lcom/nuance/swype/util/LogManager$Log;
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 25
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 26
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v7, "registeredAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 28
    .local v0, "account":Landroid/accounts/Account;
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 29
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v6, v8, v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    const/4 v8, 0x0

    new-array v8, v8, [Landroid/accounts/Account;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/accounts/Account;

    return-object v8
.end method

.method public static getResId(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "defValue"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static getSnapDist(III)I
    .locals 3
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .param p2, "threshold"    # I

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 232
    .local v0, "d1":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 233
    .local v1, "d2":I
    if-ge v0, v1, :cond_1

    .line 234
    if-ge v0, p2, :cond_0

    .line 236
    .end local p0    # "v1":I
    :goto_0
    return p0

    .restart local p0    # "v1":I
    :cond_0
    move p0, v2

    .line 234
    goto :goto_0

    .line 236
    :cond_1
    if-ge v1, p2, :cond_2

    move p0, p1

    goto :goto_0

    :cond_2
    move p0, v2

    goto :goto_0
.end method

.method public static getSnapDistHor(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3
    .param p0, "child"    # Landroid/graphics/Rect;
    .param p1, "parent"    # Landroid/graphics/Rect;
    .param p2, "threshold"    # I

    .prologue
    .line 244
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getSnapDist(III)I

    move-result v0

    return v0
.end method

.method public static getSnapDistVer(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3
    .param p0, "child"    # Landroid/graphics/Rect;
    .param p1, "parent"    # Landroid/graphics/Rect;
    .param p2, "threshold"    # I

    .prologue
    .line 252
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getSnapDist(III)I

    move-result v0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xa0

    const/4 v2, 0x0

    .line 79
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 80
    .local v0, "screenLayoutSize":I
    :goto_0
    if-eqz p0, :cond_2

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 81
    :goto_1
    if-lt v1, v3, :cond_1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_2
    return v1

    .end local v0    # "screenLayoutSize":I
    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    .restart local v0    # "screenLayoutSize":I
    :cond_1
    move v1, v2

    .line 81
    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public static moveRectBy(Landroid/graphics/Rect;II)V
    .locals 3
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 191
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 192
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 193
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 194
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 195
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 196
    return-void
.end method

.method public static moveRectTo(Landroid/graphics/Rect;II)V
    .locals 3
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 178
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 179
    .local v0, "height":I
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 180
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 181
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 182
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 183
    return-void
.end method

.method public static setSize(Landroid/graphics/Rect;II)V
    .locals 1
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 267
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 268
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 269
    return-void
.end method

.method private static shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 1
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "leftPad"    # I
    .param p2, "topPad"    # I
    .param p3, "rightPad"    # I
    .param p4, "botPad"    # I

    .prologue
    .line 212
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 213
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 214
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 215
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 216
    return-object p0
.end method

.method public static shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "rc"    # Landroid/graphics/Rect;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 223
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->shrink(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 113
    :try_start_0
    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 114
    .local v0, "sig":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 116
    invoke-static {p2}, Lcom/nuance/swype/inapp/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const-string v2, "IABUtil/Security"

    const-string v3, "Signature verification failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nuance/swype/inapp/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 130
    .end local v0    # "sig":Ljava/security/Signature;
    :goto_0
    return v1

    .line 120
    .restart local v0    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v2

    const-string v2, "IABUtil/Security"

    const-string v3, "NoSuchAlgorithmException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :catch_1
    move-exception v2

    const-string v2, "IABUtil/Security"

    const-string v3, "Invalid key specification."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :catch_2
    move-exception v2

    const-string v2, "IABUtil/Security"

    const-string v3, "Signature exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :catch_3
    move-exception v2

    const-string v2, "IABUtil/Security"

    const-string v3, "Base64 decoding failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "base64PublicKey"    # Ljava/lang/String;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string v1, "IABUtil/Security"

    const-string v2, "data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    if-eqz p0, :cond_1

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 68
    invoke-static {v1, p1, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    const-string v1, "IABUtil/Security"

    const-string v2, "signature does not match data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
