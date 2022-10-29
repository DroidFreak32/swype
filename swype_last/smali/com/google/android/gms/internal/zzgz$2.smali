.class final Lcom/google/android/gms/internal/zzgz$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqd:Lcom/google/android/gms/internal/zzgz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgz$2;->zzbqd:Lcom/google/android/gms/internal/zzgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz$2;->zzbqd:Lcom/google/android/gms/internal/zzgz;

    const-string/jumbo v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgz;->zzbt(Ljava/lang/String;)V

    return-void
.end method
