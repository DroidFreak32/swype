.class final enum Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;
.super Ljava/lang/Enum;
.source "AnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsProvider$EventsV3Columns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UploadFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

.field public static final enum V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

.field public static final enum V3:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    new-instance v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    const-string/jumbo v1, "V2"

    invoke-direct {v0, v1, v3, v5}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    .line 139
    new-instance v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    const-string/jumbo v1, "V3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V3:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    .line 136
    new-array v0, v5, [Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V3:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->$VALUES:[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput p3, p0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->value:I

    .line 146
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    const-class v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->$VALUES:[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v0}, [Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->value:I

    return v0
.end method
