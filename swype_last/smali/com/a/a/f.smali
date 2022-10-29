.class public final Lcom/a/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/f$a;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static final c:Lcom/a/a/f;


# instance fields
.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/f$a;",
            "Lcom/a/a/h$c",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/a/a/f;->a:Z

    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0, v1}, Lcom/a/a/f;-><init>(B)V

    sput-object v0, Lcom/a/a/f;->c:Lcom/a/a/f;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/f;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/f;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/a/a/f;
    .registers 1

    sget-object v0, Lcom/a/a/f;->c:Lcom/a/a/f;

    return-object v0
.end method
