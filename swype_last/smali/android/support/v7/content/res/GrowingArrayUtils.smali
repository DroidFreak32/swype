.class final Landroid/support/v7/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Landroid/support/v7/content/res/GrowingArrayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .registers 7
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "element"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    array-length v1, p0

    if-le p1, v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 59
    :cond_e
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_1d

    .line 60
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    new-array v0, v1, [I

    .line 61
    .local v0, "newArray":[I
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    move-object p0, v0

    .line 64
    .end local v0    # "newArray":[I
    :cond_1d
    aput p2, p0, p1

    .line 65
    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .param p1, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 41
    sget-boolean v1, Landroid/support/v7/content/res/GrowingArrayUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    array-length v1, p0

    if-le p1, v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 43
    :cond_e
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-le v1, v2, :cond_2c

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 45
    invoke-static {p1}, Landroid/support/v7/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v2

    .line 44
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 46
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object p0, v0

    .line 49
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_2c
    aput-object p2, p0, p1

    .line 50
    return-object p0
.end method

.method private static growSize(I)I
    .registers 2
    .param p0, "currentSize"    # I

    .prologue
    .line 189
    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/16 v0, 0x8

    :goto_5
    return v0

    :cond_6
    mul-int/lit8 v0, p0, 0x2

    goto :goto_5
.end method
