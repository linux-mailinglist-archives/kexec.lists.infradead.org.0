Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7541CFE2A
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 21:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNOfmOpP2r4cly4TTAFrR09JOVL5e1c6hiIKeNcSWlY=; b=Xw/a13Hy6Vdhzp
	b1PVSEL4vQ9Kkttf1bkU3Eg5d/jOSLUlMeW1K05h7nyhQeDeYtI+hXz6J1jnPDGVbVb+rkAd58Cju
	NT5McF0GJS15RL6N0elRky6p9xA2Nkqdk+ng8o+Tdp9zE/5q0XAdAjKOcQcBFtKaHIU8zlYvv8lxV
	YVVyE7BOn89othRyofiOmSa8q127qVoNgB2R/o1l6TdaiJ59GT++UEYx8FBe9c9l89IaM57UQXNJY
	3eWVf9YOMpvsfCG8g8dzPjtt3CkkmAon2Z/n0YNOpy42IMiMmtEpu7Pa48fgigoK01YPcn+5jxJQL
	SIV5VXLuRHzJMe/HLlZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYaSU-0001LI-Np; Tue, 12 May 2020 19:20:54 +0000
Received: from mail-eopbgr1400040.outbound.protection.outlook.com
 ([40.107.140.40] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYaSR-0001Jz-0e
 for kexec@lists.infradead.org; Tue, 12 May 2020 19:20:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FZQjHfFLCl2HUAbKfdPVX2pYtBRAJC5LdojU8XobM/Nu4g0buh60uhiWGrfbMFwc6GIIs23ykHNdPwsBJGI3mextgNOlEhgfIyyHrJrraFdSAoanH0yI10RZylyscry2C/EvA4TZtUVrn7c1swZY4gU5qb2XPiFBjnMa7djUZ3j1AhNrB07TXjoT/DRaBuKKi6X+OPgsR6TVtihLKUm5cxnIj6syjOMD8yOBwlN0nbdhXSgFFXv2jYKctP+A3NTQhzKIE4q2F1MJ8fj/aTcfWM1Uv+zc6Dwe44wgfXhEv2azICjWF/Yl381eLgf60MuLeMO09O8RW2Vc+9hheYABvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qy9/INGht7v8OBlEDvzf1fXBBsDeJ43MW8AW6s4epng=;
 b=V3scch28+gCgmPEg5bI5ShE2UPneINktgHTRJkRLOyIv4vYnmz2dIzZejxGCs0TDfffX3xiPk7/2aiJYe0uIgII+mMHz1w+iwRZ2geIcT2iFw9GAx8r8BvwiwL4bE5gS3RzJmkgPp5U3aVAuvuiJhJz5Aic4ZyaGvk4s34gv9lhjMIVO55zre8cF8hwjGgjBJjjYTDSoaNKIXwSoGU54t/lE0aS6RGhWsU3ouk7toDesduR0Jjj+PmvLTpPmQvo+4k7vz77gTxTD55mmeDfMvJ68fssk56TvlDd2CHcTV4QSxuvnW3xbEnnnlrpcd8o30i+cQvAoGdP2Fd8OAulyIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qy9/INGht7v8OBlEDvzf1fXBBsDeJ43MW8AW6s4epng=;
 b=jnAgwiosaq0aLQDBLmDiZhDxuRvDi1DNVdRTbalMFzhlbymJVB9m9zOW/QJFW0tqkJDWXefj4cF9wrm6MtZWLWfZz2kHwwZSo4zQe70lBcZgwHVAFLOLCT9FlcvkVDiG5YgcM/w4B1LRmBn8igXdHR6/pQ0fpnhkeMphJlQy20g=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB3127.jpnprd01.prod.outlook.com (52.134.253.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.33; Tue, 12 May 2020 19:20:45 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 19:20:44 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: "Daniel Walker (danielwa)" <danielwa@cisco.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: RE: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Topic: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Index: AQHWKIJfsgIq+CayDUSimqmu86c/pKikveXw
Date: Tue, 12 May 2020 19:20:44 +0000
Message-ID: <OSBPR01MB199106310D313355302BDE9ADDBE0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <20200512172546.GL31850@zorba>
In-Reply-To: <20200512172546.GL31850@zorba>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: cisco.com; dkim=none (message not signed)
 header.d=none;cisco.com; dmarc=none action=none header.from=nec.com;
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 587a03f6-7895-4592-c4f4-08d7f6a991b0
x-ms-traffictypediagnostic: OSBPR01MB3127:
x-microsoft-antispam-prvs: <OSBPR01MB31271256FA8A996B80E7A852DDBE0@OSBPR01MB3127.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tmCkU5K+p+h/Rw/seIuy6vk++daROhjUkS6kCKNaNJKuZREogQeAK1JtAtb6y+un3KY1A7oymRCSwVK036dQfOi24ypOCddnNco2lonrh8j0s4MkEUR2455MuTt/hplUjII63rgboEuXuP8ytyDgy8gEurnumT4wgQY6N1vS/W9NSpgOlYdO1THdVZByl4lNqxC8xtggFagZesb23NyFjaB+jJds9DUgHZ6zZjqyUhzEfnoFEIv+Yrjo1/YK9Zg7xxmW87ljWbu88VhnA8+smiTynbm1MKLgtFRgP/ydSSAD0sil5CGQuAyHZJRNqwTALfj4n4mxfvPCUKQTU3T4+DxlStwKticlIMd4iTmHoo22hP8RncdgwKUOnqY3hr4xcUQ//xYmlTpniHidxb9Qy7AXXCYyb/Q3DDCyNlBGfAzqRj9jelBiqZFAdadgDg1n/cLIou2qWyug29QVU34jIOH4qRJh94BvpruohTPHQ/8lc4rUio+oGfqJpw8L22KEEyKMDv1OvkzE/DaNzGwCk7Nxgmz+B7N+XOfvIcq50lGHgLNZhkwrn2VQxyLzdVG5QOOOht/AyV+6M1+y1mzWqHu4ZwzW2x9vmJdGH6UgM1s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(346002)(366004)(33430700001)(76116006)(71200400001)(2906002)(52536014)(8936002)(478600001)(66446008)(33440700001)(316002)(66476007)(5660300002)(33656002)(55016002)(110136005)(86362001)(64756008)(8676002)(6506007)(9686003)(4326008)(186003)(7696005)(26005)(966005)(85182001)(66556008)(66946007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: TEE0I5q/3t2PMKJSVIgwRZ4HJ2ptA1uQecA7dbDxfVFBsFpSWabqJj9pv6DMeHK63vqC+MFe7PdXxRPcrLEOq5ONmY0COJ/2PWYSiAv1PEg7gHmiySSKSVCiJsWJKaAVY6C6pAuyxkDeU8J2rHEkgwxMEU8xfKYyt6MennKPKfyp8iwECFEmNo+xodStfECD6TQq8H012IzWu0O31Mh5ns2tHL0j8ZHB9G9B01yGISey33SwbcmxnEDKk0d4QUzovHT57EcAf5uVK8GffiHujQVh9jqqoFV34QUiwpW09dIPwqgYTJS90CzJUmz4icfB4Us+cxdRx1DL4kzxiWXSS6id0yvDmcbMegBuCuseO/I5smvbc6ePoyTCt6YebqPJxebRFr7Q8LVuXc9h6ZvlPcLFljuCgyJxiIirUZPd0h7D25UyngNbwyoSSvNCzYA98JT2MNyH+lnTQcNwvbp9tGseeE9isOtKGeXjuHCQfW4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 587a03f6-7895-4592-c4f4-08d7f6a991b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 19:20:44.8652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sa6yFRPgnOrO4cVyTbweSgrj5dpxdI6O/CRP8/9X1bRKEIpqhv0ThQUT91glaAMfB2Yii1W+JzM1fx88/DwsLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_122051_111515_FD13A8A9 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.140.40 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.140.40 listed in wl.mailspike.net]
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
Cc: "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
>
> Hi,
>
> I created an enhancement request for makedumpfile here,
>
> https://github.com/makedumpfile/makedumpfile/issues/1
>
> I found that compressing a flat core with gzip significantly reduces the size of
> the core. Here were my findings,
>
> 32G flat elf core -E -F -d 0
> 33G kdump core -d 0
> 16G kdump compressed -c -d 0
> 1.9G flat elf core stream compressed with gzip -E -F -d 0

The kdump-compressed format does per-page compression with compression level 1,
so depending on data in vmcore, gzip (with -6 by default) can compress one much
smaller like this.  Although I don't have a vmcore that shows such a drop in size
with gzip as far as I tested.

>
> My feature request was to implement an option inside makedumpfile to gzip
> compress the core output. This can already be accomplished by piping the core
> thru the gzip tool, however, because makedumpfile already links against libz
> having the option for makedumpfile to do it allows the gzip tools to be removed
> from the crash kernels initramfs there by reducing the size.

(personally I prefer piping it through gzip, but apparently there are cases where
the initramfs size needs to be minimized..)

>
> Kazuhito Hagio had suggest adding the -C option instead of repurposing -c to do
> this.
>
> So a resulting command line might looks like this,
>
> makedumpfile -C -F -E -d 31 /proc/vmcore core.gz

Yes, the existing -c option is for per-page compression and creates a dumpfile that
can be opened directly with crash utility, but stream compression is different.
So I'd like to separate it from the -c.

(as John commented, -z also might be good, but I wonder if someone might start to
want the same function with lzo or snappy..)

Anyway, I'll wait for patches for this enhancement.

Thanks,
Kazu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
