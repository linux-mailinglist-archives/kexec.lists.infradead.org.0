Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAB41CFD3A
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 20:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fvgQhEWMpaCgXn6LvLTTgsbtw9oBAEsWftjCEox6jY=; b=Hk4XXM8je/uK/c
	wMyrwqkrouut2aShPxgyYvH4BogQLwDBdws9x4L2l/EwO1Es4R0HKwl5QgxfbdTw/BZZCEBJjAFgX
	zMMiTd2jOJ/Xe2cQKKl6qYyNuFqsWH9pX0Xe6g/nNzDD5ri/nc3v9/TB4cQ17fZL0+i1yScE5ZYCL
	qvt/jte/Ynvh7Zyw7670dvH06yF+/ReBAVviQDRxvK/4qqOpZCVtJyNGzrLmwv5zGnNxohe0FCRGQ
	9ITgzV5SGw+AKhSQw1BWnV83XPva7nVeTRmLSpUcRjIHI9k5fhW+Ee569PDsSI0P8arTRC9Qz2LHM
	6sIs6gtx75UKUPAjMImA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZdG-00006P-MN; Tue, 12 May 2020 18:27:58 +0000
Received: from rcdn-iport-2.cisco.com ([173.37.86.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZdD-00005l-Hm
 for kexec@lists.infradead.org; Tue, 12 May 2020 18:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=483; q=dns/txt; s=iport;
 t=1589308075; x=1590517675;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OTOz6rOMQGWaDB8mIXg8sQlNEutbWx7HdIcI1Ymf560=;
 b=AXDAR+aWKUrth1vV/AzsatjtRVA4d6j0veJnNHNYWRbO8cAfEzgcFLSA
 ihrGY0Wha9JUQ6Kkll8E2/1uMZ/hpotGcpTZrSwq11Y1qUHaCayqJWFY9
 beCH7MYrIm/3E5PTk0IO02VZ84GE0B+bP6N5Res6wbyvKChJctTV8gGBB U=;
IronPort-PHdr: =?us-ascii?q?9a23=3AAHKNABFnO4ZbXSPWERM26Z1GYnJ96bzpIg4Y7I?=
 =?us-ascii?q?YmgLtSc6Oluo7vJ1Hb+e401gWbVozd7PRFgOPS9avnXD9I7ZWAtSUEd5pBH1?=
 =?us-ascii?q?8AhN4NlgMtSMiCFQXgLfHsYiB7eaYKVFJs83yhd0QAHsH4ag7Zq3u16z8ZEx?=
 =?us-ascii?q?G5Pg1wdaz5H4fIhJGx0Oa/s5TYfwRPgm+7ZrV/ZBW7pAncrI8Ym4xnf60w0R?=
 =?us-ascii?q?DO5HBPfrdb?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AUAABX6bpe/4gNJK1mGgEBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBARIBAQEBAgIBAQEBQIE1AwEBAQELAYFTUQWBRy8sCodgA41FjzO?=
 =?us-ascii?q?JBIEugSQDVAsBAQEMAQEtAgQBAYREAoIFJDYHDgIDAQELAQEFAQEBAgEFBG2?=
 =?us-ascii?q?FVgyFcgEBAQMSKAYBATcBDwIBCA4KHhAUHicEDieFUAMuAaU2AoE5iGF0gTS?=
 =?us-ascii?q?DAQEBBYUrGIIOCRSBJAGCYolhGoFBP4QhPmsZAYNJhVIism8KgkqYHCkOgj2?=
 =?us-ascii?q?ab61HAgQCBAUCDgEBBXhhAy+BVnAVgyRQGA2QQAwMC4NPilZ0NwIGCAEBAwl?=
 =?us-ascii?q?8jHcBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.73,384,1583193600"; d="scan'208";a="769559429"
Received: from alln-core-3.cisco.com ([173.36.13.136])
 by rcdn-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 12 May 2020 18:27:54 +0000
Received: from XCH-ALN-003.cisco.com (xch-aln-003.cisco.com [173.36.7.13])
 by alln-core-3.cisco.com (8.15.2/8.15.2) with ESMTPS id 04CIRrEQ027164
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 12 May 2020 18:27:54 GMT
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by XCH-ALN-003.cisco.com
 (173.36.7.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 13:27:53 -0500
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rtp-001.cisco.com
 (64.101.210.228) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 14:27:52 -0400
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 12 May 2020 14:27:52 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I55dG8ZPEcU+iq3NwcStAQuD368UwyyKFVvTcKlHHhhrzkl2ni19K1QeTfkoKFsh0OicTE/VPDQSOkGN2feFZRlM/h4PHRgCV2mOxy645CuhWNkpMiHncQr2vtxlg9eC/4OVYCwU/3aZkAPUJynTwZFFa8UCA5sNzkMKdf1UVRERjdAHPE4hRycU/icX43yccar/1EydK7XVXAaVXrlejYwBjIFiV3zf+3/9GLO0FM94r9deqoko6A87kGlASKtMUp8VuejbycAdHtDvI421KOIeiWfhyw/9jk1OnYEYsL+3UTgVYXjaWbwLndvvQpLNI/5VFTqH+HxsCNQRzXiJzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTOz6rOMQGWaDB8mIXg8sQlNEutbWx7HdIcI1Ymf560=;
 b=j25nX2+1PYh8EHWCy0pmsR61ER8Qhr4jGoUwxZTIX1GCGsVnb/15svPTjQGtB8y/TdRC7ipAdScjkLuy85Jh0hNW/nBvzFk7vV7aNIN2I5Xis8s66+aKHhER0e90DYkVUfnSV2bqxB46u2dPizVZiVRYKRCr2jzlPM9cnLnl/xAzSgyIbtSA9cfYrziFVZwjxR1DV7taMjJW1or6hTDvmLDvoyzBhJFynxzRrKepIwyiwMit5LvhSe9rhTu+kYvLkQ6ssR0fhvqfBvszHPtHro9KNW9C701eicFNNsalqC1lOgR9jlgFbgLN4bFMj1m4MheNaGgKXMh3aicQMLDIjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTOz6rOMQGWaDB8mIXg8sQlNEutbWx7HdIcI1Ymf560=;
 b=k1gl7zbJdEkZ289lRLydD+YL5IstPs1eG9PVSJ/jtd4cQ8W8t7QAkkz5/k8JAq7fLwzltkGbMEfdbsvlE48EHrNXzWNNN7rzvU8klkHLNLD7L7W3LmJbm+FkMab0UCgfMCEqtI0ldWUsTVT8I8Wcv4zbWzkYZX9PUar5TIC9Btk=
Received: from BL0PR11MB3201.namprd11.prod.outlook.com (2603:10b6:208:6b::21)
 by BL0PR11MB3203.namprd11.prod.outlook.com (2603:10b6:208:63::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Tue, 12 May
 2020 18:27:51 +0000
Received: from BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f]) by BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 18:27:51 +0000
From: "Daniel Walker (danielwa)" <danielwa@cisco.com>
To: Guilherme Piccoli <gpiccoli@canonical.com>
Subject: Re: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Topic: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Index: AQHWKIsLzpiW/W/XP0qek+CFBD+90A==
Date: Tue, 12 May 2020 18:27:51 +0000
Message-ID: <20200512182749.GP31850@zorba>
References: <20200512172546.GL31850@zorba>
 <CAHD1Q_wJGA+b9hgLhUUt2fBK8aEOchis9EDW4W8JVQ1EreFwqA@mail.gmail.com>
In-Reply-To: <CAHD1Q_wJGA+b9hgLhUUt2fBK8aEOchis9EDW4W8JVQ1EreFwqA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.9.4 (2018-02-28)
authentication-results: canonical.com; dkim=none (message not signed)
 header.d=none;canonical.com; dmarc=none action=none header.from=cisco.com;
x-originating-ip: [128.107.241.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87d7aafa-1ae3-4ee7-4965-08d7f6a22e31
x-ms-traffictypediagnostic: BL0PR11MB3203:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB320386CD4F3E5FBDEADA3D52DDBE0@BL0PR11MB3203.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gHSlKZU6E50QPomcJjTIc7ZcIIfjaCO2TZohj67mX37v6BLgI3L0GOUS6LrJr/IFqamPvfeFKa6cY831ul0m1ZIp3J6p7ZF2506V2C0GssQOOnFdModwUdcgFM8LISE+/jpzSmzlhXt1ylHuhjgTAAG05F4uI3RZyTGCXnvv3sHw5cKP4b+azT9XCP7x37HaAgA795RCtgS2GYedbCSWsSS/C74flcU+wnNh/TxneTD1AXTb2QbxmfyrR7cR+r+WNtnJ2XKU2ltY3Cc3YI7Lr9SsANLIiIjN3bhxn2XaEYDzl38OckOpEp3PUSJuUGXte3mjFwOgakhQDbnBfLM61ZMsN1LAU7agwmAFVtRv59ZFChvpcxFwPjQbfoVqQADJmbAaKMT7scsPoBJjiBUBpZet0TjjTVuZ5rAk0V3ZM+ikV2NSyvYrOfTs5qbmYYLdUUnCd0OtIEBPKSi91yw9it/KkJfkfUyo1uCuQHwx6fxGyT1g9FJrm+1B98OM+7kci34tvfpyfMPKVw4VDlnovw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3201.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(33430700001)(478600001)(8936002)(6512007)(107886003)(9686003)(54906003)(316002)(33656002)(6486002)(4326008)(66476007)(64756008)(66556008)(66446008)(91956017)(66946007)(76116006)(8676002)(6506007)(6916009)(33716001)(186003)(5660300002)(4744005)(2906002)(26005)(71200400001)(1076003)(86362001)(33440700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: qCFU8OqXzC3smAbIfGU4u7WurGUEY8EFcO3BOdrMkDTfKtcwBPldd7B4b5F+Gmf8Sj+Z7goSlSKtBnXQRXYCyJX276YxTY7oZiQNMIPzru6sqlssAUssJb430PZu0c8JSFRE1Oh05C428tQsV10ecTjLqbEPgp5yMgjGaHbDpFBEiakvdyRzh8+grmaPm/IJRZ0iVHVNTpUU2Dpvyy6blgZLn36ESNU+jBRKPNu61q+2vdGHDrkrUt0663S5cehWsMSXoGpW1cNhlsYQ1sytXN77xYV/ItIEBwAAmgmEpuUOr6khxdMVSIAg0tLf4kIEn9oMkjTvqkiATxVIABJPLxoPTIKwBnRF/oXfMU59hZ4dVrVVyJBVw6zj5J4++wSwbNAOxvJiKaKpLvXm77z1Xs/FowsqcmCrCSTWBQsFMDinPkiS3+kFdNdS2TqgPvuHZd3hmR2zpxz4jMUn3rtiMn8EjQ75qNIDcfT0Bz0WT3tizjXJDI9EunbwL+HS50a/
Content-ID: <E1FA5D745FE4884CA1D3278F70DC5A66@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 87d7aafa-1ae3-4ee7-4965-08d7f6a22e31
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 18:27:51.5871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TuGphAr+tTAsw9lWpcRgqePkoarpejdd1LlLtrv36NAGVXczpZlR+uEbSqo85AN29r9ZklkzVtChxrGrYhv/wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3203
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.13, xch-aln-003.cisco.com
X-Outbound-Node: alln-core-3.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_112755_735733_98B0CF09 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.73 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.73 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 03:14:49PM -0300, Guilherme Piccoli wrote:
> It's a quite interesting feature Daniel, thanks for the effort!
> I'm curious about memory usage - did you somehow measure the
> consumption with your patches vs. the regular kdump compression?

It's not really a memory consumption issue, it's a core size issue. The core
size is much smaller when compressed with gzip. I measured the core size with
different formats and gzip compressed.

Daniel
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
