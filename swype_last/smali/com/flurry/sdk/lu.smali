.class public final Lcom/flurry/sdk/lu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/flurry/sdk/lu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/flurry/sdk/lu;

    invoke-direct {v0}, Lcom/flurry/sdk/lu;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lu;->a:Lcom/flurry/sdk/lu;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;
    .registers 3

    .prologue
    .line 1037
    new-instance v0, Lcom/flurry/sdk/lv$a;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/lv$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-object v0
.end method
