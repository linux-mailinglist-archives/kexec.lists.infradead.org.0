Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99E0188702
	for <lists+kexec@lfdr.de>; Tue, 17 Mar 2020 15:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNPY8WSSBXRkBjUf1YJ+HAY+8POIVA1vwe2YaL5Lv4M=; b=J6BC4c6xpdJZYI
	GTuh/1Wn6V9Mi67EMSNqRcFQ0zh7F/or8hcRgrFtRk0LbMhuLxfXuyRWwRSac2AX7L+i8bPpz+LiL
	PgT09PEZin95R3SIaZ09Xoyhph8kYUA9Cp6ZrC94XOPYaVs0XApzuDcS8rx4ke605GLiGx6fBxrel
	Ioxt1Xxdf2RQJjPuBgvx7zROGGC2cr9RgUdyugdk4KIFYnGocdpVviqGWUwo+9WA3QQetc0w2to4q
	Ubx5QcUbjNktajRpqr9X8yg1agJBEEeP8tN4uuRATdqhEOchMkwXRhczJLCYeb4AxIa5d49stzINl
	v56fEbECPDK/1lNX3F+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECzO-0000aG-Tq; Tue, 17 Mar 2020 14:14:38 +0000
Received: from mail-eopbgr1320041.outbound.protection.outlook.com
 ([40.107.132.41] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECzH-0000ZR-2u
 for kexec@lists.infradead.org; Tue, 17 Mar 2020 14:14:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0ljSeN2CtiXGIBuEUpCgDOGRmr19P871Of1UYtABcvpfZUdsG68GzVGCQCPrIRU2aXxIH5j6p3s7WU6OJLyETKJqGQ1BwJyJ4MrLY8ZYHIKF/Q2aC0ViG29QkhDJVeIVuyU361ErN+RkC5Omgp8rX84+Tnqt2ckwxvG4cQRjQPQQVEW1onP23GWezxjh1PIQFnNcSA6UCDFduQrp5UtEu97+xTNuNX4TkhPUTls+4VTk/tM+fYZHgQjY4A4GvjJo56ZXaIh4UEfGb0Kpthe2p7TkQ1l5LNzh6BoEXMmZyAAD96krJW3ePVVeS0IBqa3J6jWgmbrks4lvUezwxI2SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irer/T1iLB1KZ/dy6DVfxj8W9LMbtGie2A1c7bmKpm8=;
 b=mQqdJ6SdoOpfoHfCgzaW4UkpA1wMZjCoAxnct7l4dECtL/qhPP3syc9htxoxttzaupHWTVN4ty8EPYzrQeQ5rwmLw9vnFu9QaCjkqOdSdRPTn6jj68uOakIe8W8SLsh3nGMXCM7QURkx/jUQmsktztFwrFcfdgBwWulReMAcWjvAY+0E9I1Wkn8o0EAaHQPpeEUOg7mxwvxuiHH1Qde6m5RQOC9puRgd3HXdtC/4GU1WmR7/0poJ8A3wyqyu/nZxdEfjCG7uNm53rZk5HpzU3HnpobSHMd8fLzBgHdDszGAYfnLjsT8oYHmU0lDbkMooVMStZZ1KuhL3wxVPPLwrpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irer/T1iLB1KZ/dy6DVfxj8W9LMbtGie2A1c7bmKpm8=;
 b=jkDLuCfh8O7M/gYFPfkLNo18eH2+w9kNg1sy9U5QUXA/MYzVP9HLyqzth98MqosDqxfD7KOk7P0OocGxY1yov6S7NQ7hiBsNE3cv85Ytfv2Q52XgGoHZNuwNJoq+E/O4aBCy2ohYasmtnCz7TdYXeSTl3rKaaZbndeW43ZMgncw=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB4810.jpnprd01.prod.outlook.com (20.179.171.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Tue, 17 Mar 2020 14:14:22 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9%5]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 14:14:22 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Michal Suchanek <msuchanek@suse.de>
Subject: RE: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
Thread-Topic: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
Thread-Index: AQHV+8JlWVe1W8mLAUCfzJ8J0gHHeKhMyygw
Date: Tue, 17 Mar 2020 14:14:22 +0000
Message-ID: <TY2PR01MB5210FA587A093D3E59694CCDDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20200316183958.20984-1-msuchanek@suse.de>
In-Reply-To: <20200316183958.20984-1-msuchanek@suse.de>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47b6f302-7206-4046-840f-08d7ca7d7da9
x-ms-traffictypediagnostic: TY2PR01MB4810:
x-microsoft-antispam-prvs: <TY2PR01MB481026956856CC239A890A85DDF60@TY2PR01MB4810.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(366004)(199004)(316002)(71200400001)(8936002)(81166006)(8676002)(81156014)(2906002)(55016002)(54906003)(26005)(9686003)(478600001)(186003)(6506007)(76116006)(85182001)(5660300002)(4326008)(66476007)(66446008)(64756008)(86362001)(66946007)(66556008)(33656002)(7696005)(6916009)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB4810;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2xTfu67XC+VPcztJWlgsQ7nGyp4604n12uPoXqI38Qdd4JG+aMtI2uF2fS9uFHbDH4qbwJpZeUebBsElhHKwbgC5xdZ+LFSIRVHffSX1w8Ho91EGbnr4JLBXiDcCiYjA5ecO9aqzqyzSoGYvZmFStrxAbiUyVNootYQbBPlpRCHvXXatAu2B7dgXIKQl63vaej4qukM/ZWhV3yGBf9ceyFT9M0SBQZerU1Vtr7pE+ylR2m6/FePk9wSIKddRtbGytq1ZLZFtiRDieWSjlW8Hj2MT3qEojQDKCHWhSxuEYw2fMJ551RwIyG+NIYsmQVnU1VtyWDl1Yt9W7EAekIxISlwtIdQvCyugwNtq+eAjO5/cSCXndzOlmwjT/DRiYWOtsoRptIonMVlDD5edJjoR83LOH9V6Ew4wUc0Jdwztoe+HWUfe5nU3fLG7P3qUr1cG
x-ms-exchange-antispam-messagedata: uJ9P6w50UKIGB2y5quCB4DRhTmxfa9qEywQKlM0aWx8pPqQ7DhVDAvEhws9VevyDh9tNByOT4/OuxDf0xu7AoBVJzb7oqYH5YjoLoQwqJvUPiDUm8Or/po/OFalhEVBE1s90e6WY+TUOPEjMHvhxNQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47b6f302-7206-4046-840f-08d7ca7d7da9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 14:14:22.3708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rhqX8lBla+QkqJ/8p3TUxQo2NvX8PNCyf2sSws0b2dzYTaYJkKAJm2O0+6vWFazGt+BHX7RC9g7shzpKDRfH7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB4810
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_071431_435237_D6C82D71 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.132.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?utf-8?B?UGV0ciBUZXNhxZnDrWs=?= <ptesarik@suse.de>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Michal,

Thank you for the patch.

> -----Original Message-----
> Reportedly on some arm64 systems makedumpfile loops forever exhausting
> all memory when filtering kernel core. It turns out the reason is it
> cannot resolve some addresses because the PMD mask is wrong. When
> physical address mask allows up to 48bits pmd mask should allow the
> same.
> I suppose you would need a system that needs physical addresses over 1TB
> to be able to reproduce this. This may be either because you have a lot
> of memory or because the firmware mapped some memory above 1TB for some
> reason.
> 
> Signed-off-by: Michal Suchanek <msuchanek@suse.de>
> ---
>  arch/arm64.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64.c b/arch/arm64.c
> index 43164ccc32d4..54d60b440850 100644
> --- a/arch/arm64.c
> +++ b/arch/arm64.c
> @@ -81,7 +81,7 @@ static unsigned long kimage_voffset;
>   * Remove the highest order bits that are not a part of the
>   * physical address in a section
>   */
> -#define PMD_SECTION_MASK	((1UL << 40) - 1)
> +#define PMD_SECTION_MASK	((1UL << PHYS_MASK_SHIFT) - 1)
> 
>  #define PMD_TYPE_MASK		3
>  #define PMD_TYPE_SECT		1
> --
> 2.23.0
> 

Then I'd prefer to remove PMD_SECTION_MASK and use PHYS_MASK instead.
Is it OK?  Keeping PMD_SECTION_MASK looks a little confusing to me.

Thanks,
Kazu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
