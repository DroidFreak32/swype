.class final Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    .line 21
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method static binarySearch([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 49
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 50
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 51
    .local v2, "mid":I
    aget v3, p0, v2

    .line 53
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 54
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    if-le v3, p2, :cond_2

    .line 56
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 60
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public static idealIntArraySize$134621()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0xd

    return v0
.end method
