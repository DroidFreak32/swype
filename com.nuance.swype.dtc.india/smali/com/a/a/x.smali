.class public final Lcom/a/a/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/x$a;,
        Lcom/a/a/x$b;
    }
.end annotation


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1000
    const/16 v0, 0xb

    .line 0
    sput v0, Lcom/a/a/x;->a:I

    .line 2000
    const/16 v0, 0xc

    .line 0
    sput v0, Lcom/a/a/x;->b:I

    .line 3000
    const/16 v0, 0x10

    .line 0
    sput v0, Lcom/a/a/x;->c:I

    .line 4000
    const/16 v0, 0x1a

    .line 0
    sput v0, Lcom/a/a/x;->d:I

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
