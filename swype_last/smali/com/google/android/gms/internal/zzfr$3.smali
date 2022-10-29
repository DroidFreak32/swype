.class final Lcom/google/android/gms/internal/zzfr$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfr;->zzbg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbln:Lcom/google/android/gms/internal/zzfr;

.field final synthetic zzblp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfr;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfr$3;->zzbln:Lcom/google/android/gms/internal/zzfr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfr$3;->zzblp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr$3;->zzbln:Lcom/google/android/gms/internal/zzfr;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfr;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr$3;->zzblp:Ljava/lang/String;

    const-string/jumbo v2, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzlh;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
