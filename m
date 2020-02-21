Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E2816824E
	for <lists+kexec@lfdr.de>; Fri, 21 Feb 2020 16:50:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qqo50T0EBDVVmku/eDPHOQvH96LRRyRrcas8LMrQStE=; b=ApGh/tPNQ4YEOR
	TTrwtKeSKdG0RyAN6tjInMOgsJx0dTY6kKUhjPWbNNWGSSl3Oge/p2N1EjI1gkhByFS67X5FWPl7P
	+gkwIxQuzpVmlDihmRPBsofr9COi1itAg/m77OdKc42sbOtTnNKWhJdC5nGLeHxxXRFWvjftgCUQY
	tPLMbd/2VjGt+GoHITI/AmccQBLwDR0BsmhRH45p8fjpWcBKb9bmLxCO+fVL/oud9NI+jX2F0dR3i
	QIj4vyIjzCE0pUrYUKITvekz7dph7SPMXnVsJjdXO1S89O4al/wobtcdjO5ruq/+hfY5viiO53Cqr
	v9durAs5C/LFw3j9Pfww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AYv-0002gn-8t; Fri, 21 Feb 2020 15:49:57 +0000
Received: from mail-eopbgr1310073.outbound.protection.outlook.com
 ([40.107.131.73] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AYr-0002fm-16
 for kexec@lists.infradead.org; Fri, 21 Feb 2020 15:49:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQruT7n48902OKk+8r1k+4wwdf30SL7eaFR9AyY/CJWUQ6PjGJRCxpJEUil6FpZGNIPA4e0/RwIO9bcmOoEXFm1sOQtMjdSj0p0y6vMXyo9i/zgBVJIuhi3Wv+bF+Okuv17iFPgniMs1uSFd4CG2JMTOdddL2kfYy8uranVhsSgvk3fxZpU22rIIba+gjShOtDUGnP9CdJdSC9vMzfcFLOSy5muBI22w8VNfUFOxqcdcblXbGX9nlD5QlkkAEcx3gQhFcxLnipaJ/hI8cP1fdGHQqsthcryBYIXTpZ7xbF+UnYBvfnE7AZm38u3QwcA3DleWtclOj5Uzy+B7nPxZJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uae9Rm3dvr94gif5bNlpn54YwvAwsLs2PO8ZDyjHtMg=;
 b=ZIyv1ex3Mevk2V1rcNEgQNdnOpGHn+XwNd5RFzPuO7xZ1n8W0yohJvfdZ9ZubF6f9EblhTfOvPDaxe7dE9i0I6DNS4vD/ZrIOaMTMH0KSCSl64w/QsJzklMvOzDkqNppsi1MofpfLLs3DXrZ+Y2N4+Evwkrd8RTCW1TuVx7+PWTXB4H+RxmTpzfY9nsj707aU0SJHoTNj4T/0jgV/a5NN9ru15v6ABeRr6AIBElPU3P1f+5ihjeMX88uOD7Wb7rqq3M+OtM9D7PZ9cJmsDjPgmNpzvF8uC5/ngVbTTMBIkPx16DGu0eRQu+pTRwpSGo3OsBt4nehluAcWU1qGJXpKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uae9Rm3dvr94gif5bNlpn54YwvAwsLs2PO8ZDyjHtMg=;
 b=MjtdUT04TcqfzwxW3tesvTm8y789U8UtpW8PswSK0ziy9GK+tldcsWPdgTpfxfnvlbNfkb8MkUv+Yht3mtridjcaHDphYXCMvrw+QAijIMOeGvEQW+JHYXizlzb66YnQ9MCo9572ELGF6DiCtIM1KL8ubysCtVIn4iWbpV/mikg=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB2124.jpnprd01.prod.outlook.com (52.133.183.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Fri, 21 Feb 2020 15:49:40 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 15:49:40 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>, piliu
 <piliu@redhat.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQgAZRDICAABE7gIABbiuwgAA8WwCACiPygIAAR2sAgABpuDCAAkdygIAJdQYAgAsi+4CAAL0TwIAAlg+AgADS8fCAAHNDgIAABZuQ
Date: Fri, 21 Feb 2020 15:49:40 +0000
Message-ID: <TY2PR01MB5210C0E945618E63FA73DE49DD120@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20200128193302.GC4080@calabresa>
 <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
 <20200204103954.GH40679@calabresa>
 <TY2PR01MB52108AD0131515408592E08CDD030@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <cca47a31-6e05-2812-65a1-832621992553@redhat.com>
 <0b743d83-d874-a093-82d1-e6d3d8bc47e0@redhat.com>
 <5d8adf59-a4fa-0a5f-84ea-6ce64f7d208c@redhat.com>
 <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <2902b7be-5361-ea21-fcc6-099f4cc7551d@redhat.com>
 <TY2PR01MB5210849D881E84A16D8B5546DD130@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200220215705.GC3988@calabresa>
In-Reply-To: <20200220215705.GC3988@calabresa>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c485833-950f-43bd-2fea-08d7b6e5a98f
x-ms-traffictypediagnostic: TY2PR01MB2124:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB212426C29553D595AA0A98D6DD120@TY2PR01MB2124.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(39860400002)(346002)(366004)(199004)(189003)(186003)(966005)(6506007)(26005)(86362001)(71200400001)(7416002)(81156014)(8676002)(110136005)(54906003)(81166006)(5660300002)(4326008)(316002)(8936002)(2906002)(7696005)(52536014)(33656002)(66946007)(76116006)(66556008)(66446008)(55016002)(64756008)(66476007)(478600001)(85182001)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB2124;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +p8thGE3R7pqkHW/iVNXJKYU7ISCsp99TIJTFgCSHANBnV5e077sBMeVSfQUsZzp207MGVD4/NfVMzHGdW+7VgnLfymIbHWLWqrFn2foNrdinSptdS4kGxkm10e6sj+h5A0nSCHK5ILRsvDQ53xbdWAQdnRNZfzBCQGeIk+A6xRalgFu+Ew2aXiOE+KhPSGFkfoTGulZDkVEOw7XIg/jllTmIuLuR9mdfJ12gyzZMLCZ3wIsoVlt9T366ZNA0Eds9gGJ2JcnwvKMK47/sT4a7NnOWX56P2eFwMxiIMBI9CSAnkDO5lfKYF760rTdpyfRxIC1wueYEhrKljgFm5m22eUUoNG++lYj6z2qIcr8YumExhCPZp4+jDoDJUACGzjxhq79Edw2qfugMUNOVzcFjHiktbKB7sagZH2xYSQVRxqarsZF1iOPn7Q2rfapLyGezq8pnz6sjLIW45H8uQVmS5NyHuj+XCVPZ4FifOPpJZ37mx1mHmgrmxo7oerUpk74ypMDYIoP0K2PFef3Kl++EQ==
x-ms-exchange-antispam-messagedata: Py2wvujmD2FjmK2H48vweZfxyCn5WCRkILn2vTrk7XlK5KdohlMtAO58grMLODTgEXnhvSIu8Pi9vjxFnY4t7bzKnW4AhRMjLHR/5yDGfNLDVwwYnA8J9iOYQf0rOU+csX6MqRYKCeRdR2wdqh1JhA==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c485833-950f-43bd-2fea-08d7b6e5a98f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 15:49:40.3874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QYWbhnABuaMxrU37xcPC05oFe+WIWuLSD/m6LuDGT66xjHSNMmUYkW3ToltVf1yq44wZMe2fdzRa9SJnj9wG4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB2124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_074953_130437_E0146952 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.131.73 listed in list.dnswl.org]
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
Cc: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

-----Original Message-----
> Hi, Kazu.
> 
> For now, I would keep Pingfan's patch as is. I decided to test some other
> kernels, like 3.16 and 4.9 without commit
> 83e3c48729d9ebb7af5a31a504f3fd6aff0348c4.
> 
> So, they would be valid for the first iteration and invalid for the second,
> just like Ubuntu's 4.4 kernel. As I couldn't reproduce the problem, I
> investigated further and realized I was testing without your commit for
> makedumpfile: 8f1aafa1643532ece86cba22f2187d0f42fb7ca3 ("PATCH Fix
> validate_mem_section()").
> 
> With that one, all of Ubuntu's 4.4 kernel and Debian's 3.16 and 4.9 kernels
> dump correctly. Without that one, all fail, and I suppose it would be easily
> reproducible.
> 
> So, in effect, we are looking for any entry with the present bit, and then
> checking it is valid kernel address. That seems to work just fine.

OK, good to turn out Pingfan's patch is enough.  Applied.
https://sourceforge.net/p/makedumpfile/code/ci/e113f1c974c820f9633dc0073eda525d7575f365/

(Oops, forgot to add your ack. sorry about that..)

> 
> As you mention, the only case we do the second check is for some downstream
> kernels (though I would argue we should care about those the most), but at

(IMHO, upstream makedumpfile can support downstream kernels but if a patch
to support them has a risk to upstream kernels, we should be careful.)

> least from the Ubuntu side, those should not be around in the field anymore,
> and, by default, those should be the rare exception anyway. So, I agree with
> your follow-up commit in your branch, as it also simplifies the code a lot.
> 
> If you care, feel free to add my Ack to the two patches.
> 
> Acked-by: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>

Thank you for looking into those.
As for the follow-up commit, I'll test and consider whether to merge it
a little more.  (Any comments or cons are welcome.)

Kazu

> 
> Thanks for your patience.
> Thadeu Cascardo.
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
