.class final enum Lcom/localytics/android/MarketingCondition$Opt;
.super Ljava/lang/Enum;
.source "MarketingCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Opt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/MarketingCondition$Opt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum BETWEEN:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum GREATER_THAN:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum GREATER_THEN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum INVALID:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum IN_LIST:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum LESS_THAN:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum LESS_THAN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

.field public static final enum NOT_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->INVALID:Lcom/localytics/android/MarketingCondition$Opt;

    .line 247
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "EQUAL"

    invoke-direct {v0, v1, v4}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    .line 248
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "NOT_EQUAL"

    invoke-direct {v0, v1, v5}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->NOT_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    .line 249
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "GREATER_THAN"

    invoke-direct {v0, v1, v6}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    .line 250
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "GREATER_THEN_OR_EQUAL"

    invoke-direct {v0, v1, v7}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THEN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    .line 251
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "LESS_THAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    .line 252
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "LESS_THAN_OR_EQUAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    .line 253
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "BETWEEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->BETWEEN:Lcom/localytics/android/MarketingCondition$Opt;

    .line 254
    new-instance v0, Lcom/localytics/android/MarketingCondition$Opt;

    const-string/jumbo v1, "IN_LIST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/MarketingCondition$Opt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->IN_LIST:Lcom/localytics/android/MarketingCondition$Opt;

    .line 244
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/localytics/android/MarketingCondition$Opt;

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->INVALID:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v1, v0, v3

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v1, v0, v4

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->NOT_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v1, v0, v5

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v1, v0, v6

    sget-object v1, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THEN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/localytics/android/MarketingCondition$Opt;->BETWEEN:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/localytics/android/MarketingCondition$Opt;->IN_LIST:Lcom/localytics/android/MarketingCondition$Opt;

    aput-object v2, v0, v1

    sput-object v0, Lcom/localytics/android/MarketingCondition$Opt;->$VALUES:[Lcom/localytics/android/MarketingCondition$Opt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/MarketingCondition$Opt;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    const-class v0, Lcom/localytics/android/MarketingCondition$Opt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/MarketingCondition$Opt;
    .registers 1

    .prologue
    .line 244
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->$VALUES:[Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v0}, [Lcom/localytics/android/MarketingCondition$Opt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0
.end method
