.class final Lcom/google/android/gms/internal/zzfs$1$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbmc:Lcom/google/android/gms/internal/zzfs$1$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$1$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$1$1$1$1;->zzbmc:Lcom/google/android/gms/internal/zzfs$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$1$1$1;->zzbmc:Lcom/google/android/gms/internal/zzfs$1$1$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1$1$1;->zzbmb:Lcom/google/android/gms/internal/zzfs$1$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1$1;->zzblz:Lcom/google/android/gms/internal/zzfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfp;->destroy()V

    return-void
.end method
