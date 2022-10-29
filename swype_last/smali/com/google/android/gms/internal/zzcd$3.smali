.class final Lcom/google/android/gms/internal/zzcd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzara:Lcom/google/android/gms/internal/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$3;->zzara:Lcom/google/android/gms/internal/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$3;->zzara:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcd;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string/jumbo v1, "Received request to untrack: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$3;->zzara:Lcom/google/android/gms/internal/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcf;->zzari:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$3;->zzara:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcd;->destroy()V

    goto :goto_8

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_20
.end method
