.class final Lcom/google/android/gms/internal/zzfr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfr;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbll:Ljava/lang/String;

.field final synthetic zzblm:Lorg/json/JSONObject;

.field final synthetic zzbln:Lcom/google/android/gms/internal/zzfr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfr;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfr$1;->zzbln:Lcom/google/android/gms/internal/zzfr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfr$1;->zzbll:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfr$1;->zzblm:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr$1;->zzbln:Lcom/google/android/gms/internal/zzfr;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfr;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr$1;->zzbll:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr$1;->zzblm:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzlh;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
