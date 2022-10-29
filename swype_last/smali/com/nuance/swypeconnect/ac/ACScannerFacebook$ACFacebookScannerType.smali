.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACFacebookScannerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum EDUCATION:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum FAVORITE_ATHLETES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum FAVORITE_TEAMS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum PHOTO_ALBUM_NAME:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum PHOTO_LIKES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum PHOTO_NAME:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum PHOTO_TAGGED_PEOPLE:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum POSTS_LIKES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum POSTS_TEXT:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum SHARED_FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum TAGGABLE_FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum TAGGED_PLACES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

.field public static final enum WORK:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;


# instance fields
.field edge:Ljava/lang/String;

.field field:Ljava/lang/String;

.field permissions:[Ljava/lang/String;

.field timeBased:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "POSTS_TEXT"

    const/4 v2, 0x0

    const-string/jumbo v3, "posts"

    const-string/jumbo v4, "message"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_posts"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->POSTS_TEXT:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "POSTS_LIKES"

    const/4 v2, 0x1

    const-string/jumbo v3, "posts"

    const-string/jumbo v4, "likes{name}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_posts"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "user_friends"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->POSTS_LIKES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "TAGGABLE_FRIENDS"

    const/4 v2, 0x2

    const-string/jumbo v3, "taggable_friends"

    const-string/jumbo v4, "name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_friends"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->TAGGABLE_FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "SHARED_FRIENDS"

    const/4 v2, 0x3

    const-string/jumbo v3, "friends"

    const-string/jumbo v4, "name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_friends"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->SHARED_FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "EDUCATION"

    const/4 v2, 0x4

    const-string/jumbo v3, "edge_none"

    const-string/jumbo v4, "education{school{name}}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_education_history"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->EDUCATION:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "WORK"

    const/4 v2, 0x5

    const-string/jumbo v3, "edge_none"

    const-string/jumbo v4, "work{employer{name}}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_work_history"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->WORK:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "FAVORITE_TEAMS"

    const/4 v2, 0x6

    const-string/jumbo v3, "edge_none"

    const-string/jumbo v4, "favorite_teams{name}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_likes"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->FAVORITE_TEAMS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "FAVORITE_ATHLETES"

    const/4 v2, 0x7

    const-string/jumbo v3, "edge_none"

    const-string/jumbo v4, "favorite_athletes{name}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_likes"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->FAVORITE_ATHLETES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "TAGGED_PLACES"

    const/16 v2, 0x8

    const-string/jumbo v3, "tagged_places"

    const-string/jumbo v4, "place"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_tagged_places"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->TAGGED_PLACES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "PHOTO_ALBUM_NAME"

    const/16 v2, 0x9

    const-string/jumbo v3, "albums"

    const-string/jumbo v4, "name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_photos"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_ALBUM_NAME:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "PHOTO_NAME"

    const/16 v2, 0xa

    const-string/jumbo v3, "photos"

    const-string/jumbo v4, "name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_photos"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_NAME:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "PHOTO_TAGGED_PEOPLE"

    const/16 v2, 0xb

    const-string/jumbo v3, "photos"

    const-string/jumbo v4, "tags{name}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_photos"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "user_friends"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_TAGGED_PEOPLE:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const-string/jumbo v1, "PHOTO_LIKES"

    const/16 v2, 0xc

    const-string/jumbo v3, "photos"

    const-string/jumbo v4, "likes{name}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_photos"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "user_friends"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_LIKES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->POSTS_TEXT:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->POSTS_LIKES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->TAGGABLE_FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->SHARED_FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->EDUCATION:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->WORK:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->FAVORITE_TEAMS:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->FAVORITE_ATHLETES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->TAGGED_PLACES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_ALBUM_NAME:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_NAME:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_TAGGED_PEOPLE:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->PHOTO_LIKES:Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->edge:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->field:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->permissions:[Ljava/lang/String;

    iput-boolean p6, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->timeBased:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;

    return-object v0
.end method


# virtual methods
.method public final getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->permissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isTimeBased()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook$ACFacebookScannerType;->timeBased:Z

    return v0
.end method
