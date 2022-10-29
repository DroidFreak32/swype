.class public final Lcom/google/android/gms/internal/zzad$zza;
.super Lcom/google/android/gms/internal/zzapp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzad$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public stackTrace:Ljava/lang/String;

.field public zzck:Ljava/lang/String;

.field public zzcl:Ljava/lang/Long;

.field public zzcm:Ljava/lang/String;

.field public zzcn:Ljava/lang/String;

.field public zzco:Ljava/lang/Long;

.field public zzcp:Ljava/lang/Long;

.field public zzcq:Ljava/lang/String;

.field public zzcr:Ljava/lang/Long;

.field public zzcs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->stackTrace:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzco:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcr:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcs:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzad$zza;->bjG:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Ljava/lang/Long;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->stackTrace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcm:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcn:Ljava/lang/String;

    if-eqz v0, :cond_36

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzco:Ljava/lang/Long;

    if-eqz v0, :cond_44

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzco:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcp:Ljava/lang/Long;

    if-eqz v0, :cond_52

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcq:Ljava/lang/String;

    if-eqz v0, :cond_5d

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcr:Ljava/lang/Long;

    if-eqz v0, :cond_6c

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcr:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcs:Ljava/lang/String;

    if-eqz v0, :cond_77

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_77
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_64

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Ljava/lang/String;

    goto :goto_0

    .line 2000
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v0

    .line 1000
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Ljava/lang/Long;

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->stackTrace:Ljava/lang/String;

    goto :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcm:Ljava/lang/String;

    goto :goto_0

    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcn:Ljava/lang/String;

    goto :goto_0

    .line 3000
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v0

    .line 1000
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzco:Ljava/lang/Long;

    goto :goto_0

    .line 4000
    :sswitch_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v0

    .line 1000
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcp:Ljava/lang/Long;

    goto :goto_0

    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcq:Ljava/lang/String;

    goto :goto_0

    .line 5000
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v0

    .line 1000
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcr:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcs:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_15
        0x1a -> :sswitch_20
        0x22 -> :sswitch_27
        0x2a -> :sswitch_2e
        0x30 -> :sswitch_35
        0x38 -> :sswitch_40
        0x42 -> :sswitch_4b
        0x48 -> :sswitch_52
        0x52 -> :sswitch_5d
    .end sparse-switch
.end method

.method protected final zzx()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzck:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Ljava/lang/Long;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcl:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->stackTrace:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcm:Ljava/lang/String;

    if-eqz v1, :cond_38

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcm:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcn:Ljava/lang/String;

    if-eqz v1, :cond_44

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzco:Ljava/lang/Long;

    if-eqz v1, :cond_54

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzco:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcp:Ljava/lang/Long;

    if-eqz v1, :cond_64

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_64
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcq:Ljava/lang/String;

    if-eqz v1, :cond_71

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_71
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcr:Ljava/lang/Long;

    if-eqz v1, :cond_82

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcr:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcs:Ljava/lang/String;

    if-eqz v1, :cond_8f

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zza;->zzcs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8f
    return v0
.end method
