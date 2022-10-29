.class final Lcom/flurry/sdk/ja$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->a$7a1fda5(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 693
    iput-object p1, p0, Lcom/flurry/sdk/ja$7;->c:Lcom/flurry/sdk/ja;

    iput-object p2, p0, Lcom/flurry/sdk/ja$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/ja$7;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 696
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 696
    iget-object v1, p0, Lcom/flurry/sdk/ja$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/ja$7;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/if;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 697
    return-void
.end method
