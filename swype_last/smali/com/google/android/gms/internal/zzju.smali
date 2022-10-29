.class public final Lcom/google/android/gms/internal/zzju;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzju$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final zzbnm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbns:J

.field public final zzbon:Lcom/google/android/gms/internal/zzfz;

.field public final zzboo:Lcom/google/android/gms/internal/zzgk;

.field public final zzbop:Ljava/lang/String;

.field public final zzboq:Lcom/google/android/gms/internal/zzgc;

.field public final zzbtm:Lcom/google/android/gms/internal/zzlh;

.field public final zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzcau:Ljava/lang/String;

.field public final zzcbx:J

.field public final zzcby:Z

.field public final zzcbz:J

.field public final zzcca:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzccd:Ljava/lang/String;

.field public final zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

.field public final zzccp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzccq:Z

.field public final zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

.field public final zzcie:Lorg/json/JSONObject;

.field public zzcif:Z

.field public final zzcig:Lcom/google/android/gms/internal/zzga;

.field public final zzcih:Ljava/lang/String;

.field public final zzcii:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzcij:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcik:J

.field public final zzcil:J

.field public final zzcim:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

.field public zzcin:Z

.field public zzcio:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzlh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzgc;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzfz;",
            "Lcom/google/android/gms/internal/zzgk;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzga;",
            "Lcom/google/android/gms/internal/zzgc;",
            "J",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/ads/internal/formats/zzh$zza;",
            "Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzju;->zzcin:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzju;->zzcio:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzju;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzju;->zzl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzju;->zzbnm:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/zzju;->errorCode:I

    invoke-static {p5}, Lcom/google/android/gms/internal/zzju;->zzl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzju;->zzbnn:Ljava/util/List;

    invoke-static {p6}, Lcom/google/android/gms/internal/zzju;->zzl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzju;->zzcca:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/zzju;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzju;->zzbns:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzju;->zzcau:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/zzju;->zzcby:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbop:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzboq:Lcom/google/android/gms/internal/zzgc;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzju;->zzcbz:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzcii:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzju;->zzcbx:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzju;->zzcik:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzju;->zzcil:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzccd:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzcie:Lorg/json/JSONObject;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzcim:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-static/range {p30 .. p30}, Lcom/google/android/gms/internal/zzju;->zzl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzju;->zzcij:Ljava/util/List;

    invoke-static/range {p31 .. p31}, Lcom/google/android/gms/internal/zzju;->zzl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzju;->zzccp:Ljava/util/List;

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzju;->zzccq:Z

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzcih:Ljava/lang/String;

    invoke-static/range {p35 .. p35}, Lcom/google/android/gms/internal/zzju;->zzl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzju;->zzbnp:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzju$zza;)V
    .registers 40

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnm:Ljava/util/List;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/gms/internal/zzju$zza;->errorCode:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnn:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcca:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcby:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcig:Lcom/google/android/gms/internal/zzga;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbz:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcik:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcil:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcie:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcco:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcco:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccq:Z

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnp:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v37}, Lcom/google/android/gms/internal/zzju;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzlh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzgc;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static zzl(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public final zzho()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzho()Z

    move-result v0

    goto :goto_d
.end method
