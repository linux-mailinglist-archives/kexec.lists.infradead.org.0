Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2269814CE63
	for <lists+kexec@lfdr.de>; Wed, 29 Jan 2020 17:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m55qpZsbOQNAffGsfLadhCORTuERdYtF9bjkEKqIMc=; b=EFALx1yjUNKnIh
	7ijR5WvdZl9+8ZdUZLBVvzUaLO/wEFhd6AsLBbFEKUNEdy07aEfuzxQ7n7JsUypmUe+fpimZ6CFak
	meQIgppiy2CYltm15HXzEN4I9KdMbzvZkKywD6XCpgwm1H7rA8HN7cnV+trSIEV6kkCf1jL0ESUHe
	aFPx8C6HKL0rKdIFZdSmTSpR4rgmBTdH8Uta52I41AOj786j/ejDQ0iRhfFkPgyI5X0ANbWMkG4NB
	LyqwRFuTyRlNwSpuQwpj5q5jJyymO5aoZjtnB9jHaHydMPayIXUmIDToe8HIjQGNc9XPmVch53pj9
	RFs6lvziCtbSFIvCOIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqCC-0001Yb-Do; Wed, 29 Jan 2020 16:28:04 +0000
Received: from mail-eopbgr1300089.outbound.protection.outlook.com
 ([40.107.130.89] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqC5-0001Y8-C9
 for kexec@lists.infradead.org; Wed, 29 Jan 2020 16:27:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YI2uzdFfl4rX1/mjr9zv1L9mfA+9yeJWf4AslMDwV3rGugAEE5dmE2JzKhu7RC6iUfEnR8BW4xLkeMp8e9V4eywKFzEAGzA4zTn6dncSFFj+2CkxgFzM39bHqpbA0TNzoYYEZ31iQ/Ru/6kTzLZukYfueiICR9fv93V84zl4ABU9CKeqVKPiGvFk7OWVDWeYaZpMXGayD8jExvIIf04op3/GSNT9vuewYFjX0Ytc4flf8kZ0QW1bE7IJdCrscVT6UQb33eSSz5dS0fR8lVE/mf8yahUcLyfFI4P3ovonMflRiRsVWyuoBvavAkQMCOk6ulsBNqF+MAiwzDHJYNojAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkyUDQ9nGAj7uqI3Zrxp3BRc3QJShruLnSjw3l3RHUU=;
 b=L3g6imUDWf/6Zbx5q5DYOFmT6akqOw7tjmzs3J4JJ4Z0hCvQYl2JMchJzSUKGhu5tXmd6Z4m+hsG/8EpektTevLYnSvV0Jvk8nf6JS/oRs3sGetjhFGuC/3HKXwujT5Ob+u6rcBqOeqRLUi3YZLUX5igsIEeZ/EKX6IgNR01UkYEaPShg40O1wUF7RcP5qt2ieoJm5++Cy5RIYtJPTWBjwj0QZ+i23osyBHBo8SyccHHJ5tx9cyymg4DWWUYhHItXYwavzS3L44bk1KRFVmqKvUgv1Sajkyi9XPbv5bDBvaSvp4hAhaMZGz37g2izuRPB/YAr3HspLLsTxH25Y0XpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkyUDQ9nGAj7uqI3Zrxp3BRc3QJShruLnSjw3l3RHUU=;
 b=roF0eLmUSIMBc8TODqp/ErYo1tIesYpRKSqnqgO/NnHOymw0gmIaXiclsi46Yt11pFYNEdqp+2OlYFhzWktbDSS3UTRPsN9O9dMzteyqDAx8I4QMLFrn2zLJh3oZCV973VVUfePiAYyjyE33lMe/gmsyOwQFDg5NuRUXWZ5FumQ=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB3596.jpnprd01.prod.outlook.com (20.178.132.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Wed, 29 Jan 2020 16:27:54 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2665.027; Wed, 29 Jan 2020
 16:27:53 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: Kairui Song <kasong@redhat.com>, "kexec@lists.infradead.org"
 <kexec@lists.infradead.org>
Subject: RE: [PATCH] makedumpfile: Remove duplicated variable declarations
Thread-Topic: [PATCH] makedumpfile: Remove duplicated variable declarations
Thread-Index: AQHV1mZFcRgkIKmMAkGTC+oXT+fVI6gByH1g
Date: Wed, 29 Jan 2020 16:27:53 +0000
Message-ID: <TY2PR01MB5210BABA5B9D2F0ED7CD5ACADD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20200129053713.622072-1-kasong@redhat.com>
In-Reply-To: <20200129053713.622072-1-kasong@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97fa290c-6442-4b61-fd07-08d7a4d83116
x-ms-traffictypediagnostic: TY2PR01MB3596:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB3596C33C41A9D30A198121CADD050@TY2PR01MB3596.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(199004)(189003)(186003)(110136005)(52536014)(316002)(33656002)(71200400001)(26005)(5660300002)(8676002)(8936002)(7696005)(6506007)(76116006)(81166006)(2906002)(85182001)(81156014)(66556008)(9686003)(478600001)(66446008)(66946007)(86362001)(66476007)(64756008)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB3596;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s2yR+UzL+ZRy7VgxioDa3CRF3qhsaaVzOKkfl2kFuiaYOokvSvSaFcrsi5SlqZIM35sO0xeTpjHScN1MSjuQQngZUTtZmoz/lR0PFI8lSuV4OcMPHC7+z8xZF8wM2PT1YhoDskAZQv6oy4meqw8AJ0NxjC3mrm/Ug859nOmIge4+OGKeh76DjBNyV/+qXENDPoseOPxM7YVVF/xBungAk1lGgWJ5+fkfshiTPdUqpWoZTgARYjbFX6J0PS/9fDmDdQvwW7zgVQ5/2wKMXaUZwTpmSRWmM4lq+imnKFqrmZedp9iGbA2riv5z2S+O8+RGD2LvELvDFmqM568kFuqZKu6WgGXuUn8OySR5KZuFBxyT4rM0puVMWtDqqMLa8C2u+Q2sWG0z7WOMt6IRJgLKy0z84wsER5UXWUyGNHdWRCnF7l2Fhei/K4FQCGnkW+LW
x-ms-exchange-antispam-messagedata: bFJIhbDz14DoKJBXdkkHAIPiJ2UE48y1gCArk8OqYEcs0URAAdj/KK78Y42syT1416lrNj6aiXPwO9My2gnfYRV8rvmbze5ep4qZtnsI3/ouICy4MKFy/ZyR6pdFfjt7kIuw6kRMTvnbvRuqf26YqA==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97fa290c-6442-4b61-fd07-08d7a4d83116
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2020 16:27:53.9266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p+O4Vw7v/+JsG2SEqmwPgVnQFCT4ewxMQVN9h80tglFDoDDjVKDAFc2H8ZfASlbd19U/2cMrwF2Xbya1ZQb9dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB3596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_082757_472531_555D0C85 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kairui,

Thank you for the patch.

> -----Original Message-----
> When building on Fedora 32, following error is observed:
> 
> /usr/bin/ld:
> erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2010:
> multiple definition of `crash_reserved_mem_nr';
> elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2010: first
> defined here
> /usr/bin/ld:
> erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2009:
> multiple definition of `crash_reserved_mem';
> elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2009: first
> defined here
> /usr/bin/ld:
> erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1278:
> multiple definition of `parallel_info_t';
> elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1278: first
> defined here
> /usr/bin/ld:
> erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1265:
> multiple definition of `splitting_info_t';
> elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1265: first
> defined here
> 
> And apparently, these variables are wrongly declared multiple times. So
> remove duplicated declaration.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
>  makedumpfile.c |  2 ++
>  makedumpfile.h | 10 ++++++----
>  2 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index e290fbd..9aad77b 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -34,6 +34,8 @@ struct array_table	array_table;
>  struct number_table	number_table;
>  struct srcfile_table	srcfile_table;
>  struct save_control	sc;
> +struct parallel_info	parallel_info_t;
> +struct splitting_info	splitting_info_t;
> 
>  struct vm_table		vt = { 0 };
>  struct DumpInfo		*info = NULL;
> diff --git a/makedumpfile.h b/makedumpfile.h
> index 68d9691..614764c 100644
> --- a/makedumpfile.h
> +++ b/makedumpfile.h
> @@ -1262,7 +1262,8 @@ struct splitting_info {
>  	mdf_pfn_t		end_pfn;
>  	off_t			offset_eraseinfo;
>  	unsigned long		size_eraseinfo;
> -} splitting_info_t;
> +};
> +extern struct splitting_info splitting_info_t;

Interestingly, it seems that the splitting_info_t and parallel_info_t should
have been typedef'd because of their names ending with _t and not being used
as variable.  (We use info->splitting_info and info->parallel_info.)

So, is the following patch OK? then I can modify your patch.

--- a/makedumpfile.h
+++ b/makedumpfile.h
@@ -1255,7 +1255,7 @@ struct makedumpfile_data_header {
 	int64_t	buf_size;
 };
 
-struct splitting_info {
+typedef struct splitting_info {
 	char			*name_dumpfile;
 	int 			fd_bitmap;
 	mdf_pfn_t		start_pfn;
@@ -1264,7 +1264,7 @@ struct splitting_info {
 	unsigned long		size_eraseinfo;
 } splitting_info_t;
 
-struct parallel_info {
+typedef struct parallel_info {
 	int			fd_memory;
 	int 			fd_bitmap_memory;
 	int			fd_bitmap;
@@ -2006,8 +2006,8 @@ struct memory_range {
 };
 
 #define CRASH_RESERVED_MEM_NR   8
-struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
-int crash_reserved_mem_nr;
+extern struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
+extern int crash_reserved_mem_nr;
 
 unsigned long read_vmcoreinfo_symbol(char *str_symbol);
 int readmem(int type_addr, unsigned long long addr, void *bufptr, size_t size);


Thanks,
Kazu

> 
>  struct parallel_info {
>  	int			fd_memory;
> @@ -1275,7 +1276,8 @@ struct parallel_info {
>  #ifdef USELZO
>  	lzo_bytep		wrkmem;
>  #endif
> -} parallel_info_t;
> +};
> +extern struct parallel_info parallel_info_t;
> 
>  struct ppc64_vmemmap {
>  	unsigned long		phys;
> @@ -2006,8 +2008,8 @@ struct memory_range {
>  };
> 
>  #define CRASH_RESERVED_MEM_NR   8
> -struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
> -int crash_reserved_mem_nr;
> +extern struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
> +extern int crash_reserved_mem_nr;
> 
>  unsigned long read_vmcoreinfo_symbol(char *str_symbol);
>  int readmem(int type_addr, unsigned long long addr, void *bufptr, size_t size);
> --
> 2.24.1



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
