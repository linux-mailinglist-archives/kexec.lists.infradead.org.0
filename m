Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AB214BE41
	for <lists+kexec@lfdr.de>; Tue, 28 Jan 2020 18:03:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mYpraBri4zBV6jgiW92nrkzsUSEBp9wyVUsbEXKbLw=; b=lYzW1moPp9VWm5
	g4IoN6AgRxHSD/3gVZXNvdTogCWWRKroeLZwfkSUJZgIMaYjmognQ4rhbUo7zz1E1jYxk8amB5Mrp
	uGvRSET/GHUHYSp7S3DGBzJIdu+WPcp7v03lw5fhHom/Fw7+CSCUGK3fIPnKHF6ZplDZSNVE8RoWl
	cEx4Fbq2is6NPEonMR9cxOAO5LQWCwXep/tawbzcwCQZRNXuJcNakAUGGkY0nbsO8EH9+IIwa9Ty/
	KaTVtPqiaCh1vfBX5jDQtbCqcJY+CKGE9MlhQwtopuT1hH+zt/JJTp8ojA6ib6UJP4BX5vhVA65uC
	ugZtn1BpprFGj9i8NtPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUGo-0008T9-Ml; Tue, 28 Jan 2020 17:03:22 +0000
Received: from mail-eopbgr1320045.outbound.protection.outlook.com
 ([40.107.132.45] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUGl-0008RX-DE
 for kexec@lists.infradead.org; Tue, 28 Jan 2020 17:03:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KoGVfIa0TOX7kAbU3t45Hq6wyK0cgTYKw6BIew1sKwve5V3qAotSB5Q8UiMYYvcTHja2Odia7Gkq3gDB3DvgqJxdS1kd/LQruWhv0XE6x9YktIwXnaYlc33HrmTgfZ7REP+owtPglNiSbBcVQORHNjoBRobkpUxb1dGW5Cv6s5CbBsBy1m03vVw2AxwGS6de21gBJ4c7cNXZPoPZQmDOhZP3FlnprtmoOuPq0Ewyu1gv5EtiaiEnq4zibXm5k8NKdB/teA4ynrMVrSYBo3Dwi1LruvY2XzSTKdTkPLSlK4nzvxN6lafB6vbyrtACPXhyoeczXsQlEItCFfAWStCoCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vL/+DApYTAzqSBszQZqC3KyVQ6xJMcynLJwEKcd3vQ4=;
 b=fBJ3JrRdsIxqO12Ow61iUrDJtI0r5jJxn2/dk3PSB8sL4oGt28xfDrDbdn7arQfOghYe81ohzN2CRWMpmMY3xNkVwmRE19LwI9ABuTQaqb/dcFEJk5E1TD5t2HHSUpEUt5LTbgc05sffGnRd4udG6G6mSsFJiX+m9rLfX5ANy9zWfAJZOuqINdDnriioKNx3mHQOcdeRoPbyyYEWGDGfc2Ej0pSOFz241bNXquDVvbaUtToX9wXaMod/TyQUNQ4K2sqNfAdCGPp5+U4ATUP6//ejxoohVE8moNcGwF4T5+BM/rqpFvDnHp9r55Jg+vEhRYJDLtypF690zTaLs7ShWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vL/+DApYTAzqSBszQZqC3KyVQ6xJMcynLJwEKcd3vQ4=;
 b=UA1kctJ35lur9E3MtQFCjz+fo+8/lKT/jqsaQljpfOovJnRlKT+YMUDrJ8N1JctcgNfUE4hgKD53lJqncGXuwVJfaO2FoLreNHDYdX69maBADSilFmL9gRi8uyVMbgNsoRZ4hvrwt8KIHDzkrJVoKcb6LO6ogABonkbjftHfWHQ=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB5132.jpnprd01.prod.outlook.com (20.179.170.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.19; Tue, 28 Jan 2020 17:03:13 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 17:03:13 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQgAZRDICAABE7gIABbiuw
Date: Tue, 28 Jan 2020 17:03:12 +0000
Message-ID: <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
In-Reply-To: <20200127180627.GB4080@calabresa>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 747f44ae-7d75-470e-6a8f-08d7a413f5bb
x-ms-traffictypediagnostic: TY2PR01MB5132:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB5132BA0DA8F6101665669D5DDD0A0@TY2PR01MB5132.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(199004)(189003)(9686003)(186003)(478600001)(6916009)(26005)(71200400001)(7416002)(55016002)(4744005)(8676002)(85182001)(76116006)(66946007)(52536014)(316002)(6506007)(81156014)(8936002)(5660300002)(81166006)(4326008)(64756008)(66476007)(7696005)(66446008)(66556008)(33656002)(86362001)(2906002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB5132;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dmOY6gT9q3+oTztFqzv0Dp1FlDBXkEpweHkifUdjC+ufMiNsVlZUbmaadUvu06Z/dosEKgGjs3eRH/x4l1o9ca1C3dW6LByCNnSmoZM8ZavzMASSIfn69HnxJcQ1y9OxaoaTZI8Korn0qcy800CKOpPFldSrqrtePzCgAc3KusPBsm0OImqLQ5vx6Cxes8xAHeb5ymox3A586iEBi430Wo6ZMS2yFtJNoZKgjBhY8jGwofNPLwAYapThDUmEUyI7iSgXTQ2sbS2S7FbT9o4ZpCAy+42YY8kiiVEymNMccoOjue/HCWCqf7CN3Wy9bcGSoxTS6vXRsDEBhEC9ugJ3MKFGjbqLs01Aymhu86syGaV0hhX6jIeYP2Ti8kSRcEeJM3nLhzJll8d3mV3R0YXTBUBa1YjxdOy8wlqEk1VR2X7xxXxrmodRgzZ1E4c+Cd7C
x-ms-exchange-antispam-messagedata: 2td+r0tUd54AfVat+lJgjRQ7KiaOBYy4RFZnuTjOX0EyMVxdzZX4VcZoZ61qh0xNXmHLb8cC5cTKn3oXZIqT35WI3VNpGQL66LwE2jlv1FJZD2WHXDBY9pcyGfpDnskXYw3K5725sb2BcgHL/HYqhw==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 747f44ae-7d75-470e-6a8f-08d7a413f5bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 17:03:12.9649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f15wlvh5wP7/pVsAtnpSms6chKb8V+rSGhaaqgWOSIPnPeuvzv132Mv6DlJqh6vRbkjmqu/ok17P6/P80W0Nlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB5132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_090319_500428_AA86E20C 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.132.45 listed in list.dnswl.org]
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
Cc: piliu <piliu@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Cascardo,

> -----Original Message-----
> On Mon, Jan 27, 2020 at 02:04:54PM -0300, Thadeu Lima de Souza Cascardo wrote:
> > Sorry for taking too long to respond, as I was on vacation.
> >
> > The kernels that had commit 83e3c48729d9, but not commit a0b1280368d1, are
> > not supported anymore. In a way that it's even hard for me to test them.
> >
> > However, I managed to test it, and those two lines are definitively needed
> > to dump a VM running such a kernel. Is removing them really needed to fix
> > this issue?
> >
> > Otherwise, I would rather keep them.
> >
> > Thanks.
> > Cascardo.
> 
> By the way, I was too fast in sending this. We really need to keep those lines
> as makedumpfile will fail to dump a 4.4 kernel with this patch as is.

Is that Ubuntu 4.4 kernel which has 83e3c48729d9 and not a0b1280368d1?
Could you elaborate on how it fails?

I'm thinking that Pingfan's thought may help:
>> I think it could be if/else, no need to call twice.

Thanks,
Kazu

> 
> Cascardo.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
