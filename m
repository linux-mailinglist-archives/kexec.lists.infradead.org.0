Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD2914D013
	for <lists+kexec@lfdr.de>; Wed, 29 Jan 2020 19:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X340RkilEP/XxfEAKAfO5TBFXb0Rf97S6o3XvV+6tL4=; b=eXbMjVJVGLE0jV
	19GnDkNBbG9QtlVrD8qDRE61d6Qid/fCaTjnbC2okO4a+aj/G6tleZbeHVQ/ivRRKXA85jvp3cjPo
	bcAhth0RKsgizyBTWnAC6jTDof7eXQwIBlI7WBP/4ohkHO69PEnOfksyVDR4juRQMdonpfpwycUT6
	dM+KrMvSXxs7aGEoqTs1wmUe2mDpL4767F4HSzCbQ6lZ/e9BklAGpbSbb51JM+djgGZmq/H7ri4K6
	/Duagd5ERbWBMHogk3CP50RpbaPS8ALgXDVihMa3wjUJIS3cHhBm1OFDmqF0JGrlVr56TbaH3xLSS
	3xMm208muf05IlP7/EpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwrgc-0003jZ-R4; Wed, 29 Jan 2020 18:03:34 +0000
Received: from mail-eopbgr1320078.outbound.protection.outlook.com
 ([40.107.132.78] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwrgZ-0003id-81
 for kexec@lists.infradead.org; Wed, 29 Jan 2020 18:03:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc/hfrlMEz5q/yk6M28iyQkvZwpsBGowlTqCNOZJhjriMGEZN9J7RFciBvpxNw5MuO1lpmskcHjY3E713cXybxNskNFOt7jk6LzF7PC6sPHLAAYcULjh9z9rkGVskW+lM+tsm8hURW8FF6opi8IEIZXXQBgy+0oZQnLec4cYOrqaiDituv13DS6N2Tnkg+SOhcWdynbCcuMSOJXbf93PI3u9Qbdpdppv8hv0rAA7IkBGfuB+Dntc25WBmaULE66FTg7tkIvc/dwyldcgJG0bSRTPXYSPR7tdSyIq89OBsrIrlMTWtpZe3JpHTUaRfhpGpqGdoRuhEwdOPq4zkXpAvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OwVYakaAnjdrNCq3DsxbduAyGF2tBAAmKNfjY0aeBhw=;
 b=aBJHDwiqxUgzhKj0kxQ2khb9aOtvYyiDrOvPFvsq/h2XpHhAG8nY0yfR9cXvaKgnMdWLg0fkYEm4SadQUCvtpXoQEJCc2C/fsIciUXy+Y9R0/oLMCOJeqOcPZMB9HkReBABXvy2Q/3wBD+Jl1W7DjWTHlMZRGfodOARjuRx+5wqTr7Cz9JN5XC8cKtcRAeakTy9baHy8GqNgC3m1f4ZXDMbbMi8PK/xv3yOyJzg+6Mp7UXQ77S4z49xhxoTRsZ2kid5rb8BvwDBI3rPNQDYhcBbcBAbFew4q0qyFiUJn0XSlUr3IN2RS/BAjYoyZPrComu0AX9AEj+hordroyvD/eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OwVYakaAnjdrNCq3DsxbduAyGF2tBAAmKNfjY0aeBhw=;
 b=Bu1P9sYO1ulH4hvi2FDwUH5vKjmV4dDnv/up29od8WvgdFfDRIR7aYhyeWb4TlD/hIo/kWL8ENvB0whhuWF52mAulsRoc3oViSsYPLJ9sE8GLG8IjdsbCvQJrDAP7Ez1PKLCTaUYs5kWuPXpH9c72fxXI7q5E9C+S8kfpCeQULc=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB2668.jpnprd01.prod.outlook.com (20.177.98.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Wed, 29 Jan 2020 18:03:23 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2665.027; Wed, 29 Jan 2020
 18:03:23 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Kairui Song <kasong@redhat.com>
Subject: RE: [PATCH] makedumpfile: Remove duplicated variable declarations
Thread-Topic: [PATCH] makedumpfile: Remove duplicated variable declarations
Thread-Index: AQHV1mZFcRgkIKmMAkGTC+oXT+fVI6gByH1ggAAVpwCAAAIN8A==
Date: Wed, 29 Jan 2020 18:03:23 +0000
Message-ID: <TY2PR01MB5210949D4CCEAA1E82026CB5DD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20200129053713.622072-1-kasong@redhat.com>
 <TY2PR01MB5210BABA5B9D2F0ED7CD5ACADD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <CACPcB9eCAYr223C=A9j9MY2-v--rxgJ8CKJgNz0nVBC9U48MGA@mail.gmail.com>
In-Reply-To: <CACPcB9eCAYr223C=A9j9MY2-v--rxgJ8CKJgNz0nVBC9U48MGA@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78f0eb01-796a-4017-b782-08d7a4e5880e
x-ms-traffictypediagnostic: TY2PR01MB2668:
x-microsoft-antispam-prvs: <TY2PR01MB2668578959B51E3263EDCC38DD050@TY2PR01MB2668.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(396003)(136003)(39860400002)(199004)(189003)(6506007)(9686003)(26005)(186003)(55016002)(8936002)(52536014)(5660300002)(71200400001)(85182001)(8676002)(316002)(7696005)(4326008)(81166006)(81156014)(86362001)(478600001)(66946007)(66476007)(6916009)(76116006)(64756008)(66556008)(66446008)(2906002)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB2668;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VFGmXlmKLklUpR8fMoD5S2aW2m80wXuU0W8OL9wsKoz1ZBeTfJ2yG7x1rDpXFwBMSUg4Vv7qHFT/jCfn+woQA7zwYwGtssuUFDlcz1lDMH9uIkrZQFM66bRFa5d5g2TEhjbrYnbpVDcx9n0BhKXlvnli1vTCbaQhEv1J80GVlh2GGDJZ2Dhu55//lXWIFvTr6P3A+K+snj6BDERDWRsFlSAjmWwilr2pCtKIBC5zttiukkl4PXXsnFj89TM6VXY/GC3bh3kvvOyeeRFIuyDSG4NNiDEsHatO2ozV4Bewqrh0ZCEUhMiO6rbqQlHKk95UvPXzZB3efigEDNHsIXdnb2zuXmquVYRlgFbhMEasYCZxbzoncDYRFKrkmD6Dlf6HlGqQyZ+/jgzw03mM8JOqZV0DlHiiE1IxG1qCGkOIMSHFIuViG8nydMmlsUSdQkQV
x-ms-exchange-antispam-messagedata: bBRBBJLPDxy3oJChMfmHVuMbWGE1HKhIBhfrh0ncqbj6gzGOAhgCrZaMJGSFEeAG5oj7Viu2RIS3kMrTlawe+4ymUs7pTNIUnCdXpEwRAfFBEbibkS4QN1kbK0SiJnnSPkJV8zqomwQIQob0snUHvw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78f0eb01-796a-4017-b782-08d7a4e5880e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2020 18:03:23.2586 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7+r/4fd5oA2PrM/f8YVBdW/UAIVN7ddPuhpN+N19BDLsJS7C+12wuJZNhri/3OfYi8sSXLHflP+tL2Vzs4NKNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB2668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_100331_338046_3986B467 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.132.78 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> Thanks for the review, and yes it's definitely OK to change the patch
> in this way. I just took a brief look at the code, and modified it in
> the way that actually change nothing. And after a second look, indeed
> they are never used as variable, only used as parameters of sizeof().
> 
> So actually can we just get rid of them, and use sizeof(struct
> parallel_info) and sizeof(struct splitting_info) instead? It may be
> even simpler.

Yes, let's do it.  I thought to take the original intention and make the
patch simpler, but thinking it again, each of them is used only two times,
and as you say, it would be simpler.

I will apply this:

--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -10954,7 +10954,7 @@ check_param_for_reassembling_dumpfile(int argc, char *argv[])
 		return FALSE;
 
 	if ((info->splitting_info
-	    = malloc(sizeof(splitting_info_t) * info->num_dumpfile))
+	    = malloc(sizeof(struct splitting_info) * info->num_dumpfile))
 	    == NULL) {
 		MSG("Can't allocate memory for splitting_info.\n");
 		return FALSE;
@@ -11042,7 +11042,7 @@ check_param_for_creating_dumpfile(int argc, char *argv[])
 			return FALSE;
 		}
 		if ((info->splitting_info
-		    = malloc(sizeof(splitting_info_t) * info->num_dumpfile))
+		    = malloc(sizeof(struct splitting_info) * info->num_dumpfile))
 		    == NULL) {
 			MSG("Can't allocate memory for splitting_info.\n");
 			return FALSE;
@@ -11077,13 +11077,13 @@ check_param_for_creating_dumpfile(int argc, char *argv[])
 
 	if (info->num_threads) {
 		if ((info->parallel_info =
-		     malloc(sizeof(parallel_info_t) * info->num_threads))
+		     malloc(sizeof(struct parallel_info) * info->num_threads))
 		    == NULL) {
 			MSG("Can't allocate memory for parallel_info.\n");
 			return FALSE;
 		}
 
-		memset(info->parallel_info, 0, sizeof(parallel_info_t)
+		memset(info->parallel_info, 0, sizeof(struct parallel_info)
 							* info->num_threads);
 	}
 
diff --git a/makedumpfile.h b/makedumpfile.h
index 68d9691..7217407 100644
--- a/makedumpfile.h
+++ b/makedumpfile.h
@@ -1262,7 +1262,7 @@ struct splitting_info {
 	mdf_pfn_t		end_pfn;
 	off_t			offset_eraseinfo;
 	unsigned long		size_eraseinfo;
-} splitting_info_t;
+};
 
 struct parallel_info {
 	int			fd_memory;
@@ -1275,7 +1275,7 @@ struct parallel_info {
 #ifdef USELZO
 	lzo_bytep		wrkmem;
 #endif
-} parallel_info_t;
+};
 
 struct ppc64_vmemmap {
 	unsigned long		phys;
@@ -2006,8 +2006,8 @@ struct memory_range {
 };
 
 #define CRASH_RESERVED_MEM_NR   8
-struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
-int crash_reserved_mem_nr;
+extern struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
+extern int crash_reserved_mem_nr;
 
 unsigned long read_vmcoreinfo_symbol(char *str_symbol);
 int readmem(int type_addr, unsigned long long addr, void *bufptr, size_t size);

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
