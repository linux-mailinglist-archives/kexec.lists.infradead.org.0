Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4C81A6C56
	for <lists+kexec@lfdr.de>; Mon, 13 Apr 2020 21:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUv4TKEL8R7WGBbNcrLpxIVIsb1ZyRCKCWeBEzI1Xbk=; b=l6wVj5vIvWYH5j
	vd7IF6zq/Ecn9R0bTpYwlml0I/Hz0Zr1sG2viboNa8QzX0cS+6RQCKx2lBMwImhUBxL8BwfklinEt
	C7hxar+j6LVL8lX8rlTCemjH4JGdFWAEHcXpbQYuN5coBGkImdXbswS9lwhqoZWkVVq0aMlMuXkrL
	tc3HNTFIiUHrCHgwKapftcyfxwObc6PWhiYhDHi1x0cFROIp2wo0Q6HRRXlzBlgyOzJ5rvTUFXe1i
	OMk55cQ4Vmk+DDjir21osOl4dDxhDlcDw47w5at+EtDfsb83NBpHjabeExF02wnP3oohhGAGA2me+
	z0p0mL1WSWSi4mKZeSfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO4TC-0003Qk-4h; Mon, 13 Apr 2020 19:10:10 +0000
Received: from mail-eopbgr1410071.outbound.protection.outlook.com
 ([40.107.141.71] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO4T7-0001bn-0K
 for kexec@lists.infradead.org; Mon, 13 Apr 2020 19:10:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M8pRildtNTSlXjlDsHnK7BZDttF8g99md7g9iZiGBNEX7kBCj9oGSdeaSqK+ixe1/YM/T9Zxws2o/V7TeWY+E3gkMOD3VUdzV0G7BFnpvqfE5oL45IlNnY8Yr/E/eRRb7ft8d2aVd5IcKByNMpLh4uCxQFBUGWDw+jrKBijk2mjmoFWMnKFJa4sWTGcwkhjLr6vtVkJ62FM0gl0Mpvq20S4gDkuhATl/LdhkldWenydqd2Sup0to2SFEujgz7XWPtTdLjx9ZCMsccrdX46V3zsBYdWQ/sAadO2O963NW0a50E856KRHOSie/VF6weOlWBaIoYC/lZ0lD3yuOSpthNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fxjpdIFkdRrg9XzhAQZmh7vbm0NSZX3xClQIDKvShkw=;
 b=Ln4RTNQU32xwhjpP1z0l+juARlhb9vXJ04yPSNQ4ZEpnmGF2Oz1j0ANRrvRJzSJG4HU0C51iywqDxm0vqn0QGtGgnuM3IRXhk6SLI+CbqKog+zdf85Mi2K9UJfsKsfWrRh1KRqAWvHUAKEZ1OBltzY5en4Qa6NWLW/u+Ns4YJTvnMbvc6+n/H2BvEri2ppmcL2AK14od2ZLujs7NbgtSAhTr3uZ+auM9YsGDrhRK2bBfqkKrtgVpFhi9R5wMU7y+hbk5UYuq1DyQkvMIvMCOSyFJdTTfb7ST5yrOkWy/PyClqFe8a6TQVg/HWZfjV9aQGpmJbthfL2ttn6IZitd+cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fxjpdIFkdRrg9XzhAQZmh7vbm0NSZX3xClQIDKvShkw=;
 b=ls9A4/WlDOJ4s/1UHjRHQe/5mX6oVT5TzUMSuhWAk5JkxwWgigU1+os+C2pGRmWabz5lWmrPWJk6XoF/JLIeZZsa58dX6X5O8hZaaaYdaoFZMAClF6l4nMy5hKerpZxw3HyYU8uy5q9m1E20KzvV0yJNC8CNthY8mJgAGlKm758=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB2565.jpnprd01.prod.outlook.com (52.134.252.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.16; Mon, 13 Apr 2020 19:09:55 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 19:09:55 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: Pingfan Liu <piliu@redhat.com>
Subject: RE: [PATCH] makedumpfile: clear mem_map if not in pt_loads
Thread-Topic: [PATCH] makedumpfile: clear mem_map if not in pt_loads
Thread-Index: AQHWEUYtPVqsd6QMrkmZg9eiaOdQ7qh3YA2w
Date: Mon, 13 Apr 2020 19:09:55 +0000
Message-ID: <OSBPR01MB1991F32564DE2C60C233EC76DDDD0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <1586749598-1671-1-git-send-email-piliu@redhat.com>
In-Reply-To: <1586749598-1671-1-git-send-email-piliu@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1264681-7731-4a05-fdcc-08d7dfde4093
x-ms-traffictypediagnostic: OSBPR01MB2565:
x-microsoft-antispam-prvs: <OSBPR01MB2565D113D844EAF2998D0727DDDD0@OSBPR01MB2565.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(7696005)(9686003)(55016002)(33656002)(2906002)(6916009)(5660300002)(71200400001)(86362001)(85182001)(26005)(52536014)(8936002)(8676002)(66556008)(316002)(186003)(76116006)(478600001)(81156014)(6506007)(66446008)(66476007)(66946007)(4326008)(64756008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qY69yvPwNEatYAbHBFAgH8+9/+4vq+jVvwICoDxNrQrA1aM7v/yJtcP/x5D701QYv3hgHYbvBonuBTXJkuyMed5+yX58ajOYBAU3LuE2z9cdPpKaC+IRCi1eMX7tPhqShaNPIEgTALkiEUiUK6IGTeYoMcr175wDbwkvHFNq4Vd3nEleObjpE09h/cdVdug+0sQ/RgGJs+re7MXSyqhY/j+2v/Jmj4RkIZuUzuDBDzeCmV3mRskQyy4Jv+/Ma/6qePFRKFnMNc2tDNhrNG9qtv5vWiZ9xb5/BbudxxmmtE0Uk42z3adjhCzyjIhB8lDyE2vInvGN5y942AoKt5KyVZCe3GlPgTaKymc2/h9qx4KSo7dSSVp5M4LPma5LP+OsQ6vH5vV027wQtIrq6AypJ1su83LRuVZgwz6amjW9XbmgFdsfgv64RoHXzVsPsxJa
x-ms-exchange-antispam-messagedata: 5FlXSg/Mufe/PCARweHGyHU5PV0xkHN5OSP7uWEwx3vNaQ7vVCqlBt5CK7SQ2utWTpIc4ei8qvmDNFUk/B001vd7Ff6om5lddYA+lM9mcNzLPGwlGqTj80BO17emdnOtZdoBSkg0uYE0FgzJttj56A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1264681-7731-4a05-fdcc-08d7dfde4093
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 19:09:55.4069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Wzck99+iTr1AfD0eyfKc4hWl4Omw4mkkSWx8aicktfc93zkgBvP9lnNFuuk/Qeim0k7ru24f+T0sp3FkQaKTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB2565
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_121005_139270_9087BD62 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Pingfan,

> -----Original Message-----
> The crashed kernel passes usable RAM info through pt_loads[], but the
> current code ignore this, and parse all sections below info->max_mapnr.
> Refer to code in get_mm_sparsemem()
>   num_section = divideup(info->max_mapnr, PAGES_PER_SECTION());
> 
> These ranges can include unwanted memory e.g. reserved-memory for crash
> kernel, PMEM for fs-dax. Excluding them by setting mem_maps[section_nr]=NULL.

hmm, I think that bitmap1 corresponds to pt_loads ranges, so even without
the patch, only the ranges in pt_loads can be included in a dumpfile.
Am I missing anything?

Thanks,
Kazu

> 
> Signed-off-by: Pingfan Liu <piliu@redhat.com>
> ---
>  elf_info.c     | 12 ++++++++++++
>  elf_info.h     |  1 +
>  makedumpfile.c |  5 +++++
>  3 files changed, 18 insertions(+)
> 
> diff --git a/elf_info.c b/elf_info.c
> index 7d72742..297c3e4 100644
> --- a/elf_info.c
> +++ b/elf_info.c
> @@ -1302,3 +1302,15 @@ get_max_file_offset(void)
>  {
>  	return max_file_offset;
>  }
> +
> +int phyaddr_in_pt_loads(unsigned long long phys_start)
> +{
> +	 struct pt_load_segment *pls;
> +
> +	for (int i = 0; i < num_pt_loads; i++) {
> +		pls = &pt_loads[i];
> +		if (phys_start >= pls->phys_start && phys_start < pls->phys_end)
> +			return TRUE;
> +	}
> +	return FALSE;
> +}
> diff --git a/elf_info.h b/elf_info.h
> index 934b608..f5bb07c 100644
> --- a/elf_info.h
> +++ b/elf_info.h
> @@ -90,6 +90,7 @@ void get_eraseinfo(off_t *offset, unsigned long *size);
>  void set_eraseinfo(off_t offset, unsigned long size);
> 
>  off_t get_max_file_offset(void);
> +int phyaddr_in_pt_loads(unsigned long long phys_start);
> 
>  #endif  /* ELF_INFO_H */
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index f5860a1..c0fa075 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -3556,8 +3556,13 @@ get_mm_sparsemem(void)
>  		goto out;
>  	}
>  	for (section_nr = 0; section_nr < num_section; section_nr++) {
> +		unsigned long phys_start;
> +
>  		pfn_start = section_nr * PAGES_PER_SECTION();
>  		pfn_end   = pfn_start + PAGES_PER_SECTION();
> +		phys_start = pfn_start << PAGESHIFT();
> +		if (!phyaddr_in_pt_loads(phys_start))
> +			mem_maps[section_nr] = (unsigned long)NULL;
>  		if (info->max_mapnr < pfn_end)
>  			pfn_end = info->max_mapnr;
>  		dump_mem_map(pfn_start, pfn_end, mem_maps[section_nr], section_nr);
> --
> 2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
