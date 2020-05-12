Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2951CFDE1
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 20:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=951u0TllZr0c3cow+uRvXJzUzDtCoWmtdj9BVSS1Bmw=; b=LP2hrcWO6syPYP
	LIP9bGaY8t8fJcSrMkaat+T7NLuCYFaH+MxyYPCmkDvQDkMS+95Au0L7o6hA2iGPSRmzfUUCV33ob
	eTm5NsN+v4OBfgKqBZ8fEBayEv/BuDZaDfYJjeMb8unizVDAzDn4Sng/WriVoXCwKf/bVZu4Wdh7z
	ehngjB6Dfr0DZa9hZJqmJF06QQn28MZLziabI+cTroTteBj0d61hLG/uM0u3mqi7h0MslbstNjceA
	qLEiVaOHPxV3EKwU64Psw58Y8mLjdxt4EyYJZg68ELWw42YcPj7snzabPnmiw9SYAbwQg75gurX1n
	P/sLgBGLAm/3u0BaEi6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYa59-0002Kk-KU; Tue, 12 May 2020 18:56:47 +0000
Received: from alln-iport-8.cisco.com ([173.37.142.95])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYa55-0002Je-QB
 for kexec@lists.infradead.org; Tue, 12 May 2020 18:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=710; q=dns/txt; s=iport;
 t=1589309803; x=1590519403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=v0ViED1Mdl0qU/cAjXvfmAkzkfubRTQ89ay30SpF58k=;
 b=kKc0qK2U3spRq0uiiA5KojzaErhNEzMpjjIliMVnY4jve8IMykmXxvIy
 DOJcRwNM1eWDFWULVes8gMiBjN+KQYy4yStOiZEiGZXDBbEX1zJgNjnQZ
 dxlVlJzR2iNhqDEq2K6ysBWzm3iuE7jIqWGsvDw6mpB4MZdXIakHBEM+e U=;
IronPort-PHdr: =?us-ascii?q?9a23=3Ab/6zGxVMOV9T04Q74io3leb85CzV8LGuZFwc94?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnF6O5wiEPSBN+BuflNje3QsqvpXSoL5pPS+HwBcZkZUR?=
 =?us-ascii?q?gDhI1WmgE7G8eKBAX9K+KidC01GslOFToHt3G2OERYAoDyMlvVpHDh5jcUHR?=
 =?us-ascii?q?P+PgNxYO/yH92ag8G+zevn/ZrVbk1Bjya8ZrUnKhKwoE3Ru8AajJEkJLw2z0?=
 =?us-ascii?q?7Co2BDfKJdwmY7KA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AOAAAB8bpe/5pdJa1mGgEBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBARIBAQEBAgIBAQEBQIE0BAEBAQELAYFTUQWBRy8sCodgA41HjzO?=
 =?us-ascii?q?JBIEugSQDVAsBAQEMAQEtAgQBAYREAoIFJDUIDgIDAQELAQEFAQEBAgEFBG2?=
 =?us-ascii?q?FVgyFcgEBAQMSKAYBATcBDwIBCA4KHhAUHicEDieFUAMuAaU0AoE5iGF0gTS?=
 =?us-ascii?q?DAQEBBYVCGIIOCRSBJAGCYolhGoFBP4NsNT5rGQGDSYVSIrJvCoJKmBwpDp0?=
 =?us-ascii?q?srUcCBAIEBQIOAQEFeFwCNYFWcBWDJFAYDZBAGINailZ0NwIGCAEBAwl8jHc?=
 =?us-ascii?q?BgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.73,384,1583193600"; d="scan'208";a="491543550"
Received: from rcdn-core-3.cisco.com ([173.37.93.154])
 by alln-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 12 May 2020 18:56:37 +0000
Received: from XCH-ALN-005.cisco.com (xch-aln-005.cisco.com [173.36.7.15])
 by rcdn-core-3.cisco.com (8.15.2/8.15.2) with ESMTPS id 04CIuags004182
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 12 May 2020 18:56:37 GMT
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by XCH-ALN-005.cisco.com
 (173.36.7.15) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 13:56:36 -0500
Received: from xhs-aln-002.cisco.com (173.37.135.119) by xhs-rcd-001.cisco.com
 (173.37.227.246) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 13:56:36 -0500
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-002.cisco.com (173.37.135.119) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 12 May 2020 13:56:36 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBSi8vYFaLhzkNJbVprzJJ2PYf7TnU19X8RTVXomAUvrrb1Sif5Mv0alvjhhyreYQ+Eij9lPHtxLSCGbju2bBmQc9Ekelsr/qgvkjqU1qfYApDrQxryBKocJtp8do2In8uPcq2ovWghNW0hLUjLELHO0uu/S9zosAxK2MOuPREsDR1imUbeP7LXLvXYHjcP8UCfLmWZAMYz2omeD1LvX8m4TUIg9NJ7L8xkcH9SsjFMelSGZLzzNcoQJ70S4h6RiSijJxArl0eV2OthUJWWEwOLod/F5fN+3JgHNTEMyUUS4tvd/bIK7hDih2YCLNxoj21UDgC/JMNMO8pFShXXMCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0ViED1Mdl0qU/cAjXvfmAkzkfubRTQ89ay30SpF58k=;
 b=ddWyVcGiicrZQHxYDGKROIe7RweC+9TG7MLW1a82bnfvcSEikA0UhcLL5+6sKWwV4bixmrGmUrOn517GHgxmb01hjSRqZnfEva9zHMabqDIMhGS9Q4n/60OKmIH1Mx+HO4wQ3Yay3tXxS/961qJNqQoStLQ2EzTfgTMRlvTEEg47N8JgVktoImc24eA58GXaG66FeqzIOdYhHbfc9mQj8lZvHJk1qXq3I4Wsi/fJxnI0RqeZ4GQpWvMzDnSBKXWGFoKzKmZc6ulhOj5S7PHwBXWsGqlL8DFO/Ib0OA4CmVPzuBq1mvacRDhNbZWxuuVVXvCKMUFa/rXxXNqTd/i/sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0ViED1Mdl0qU/cAjXvfmAkzkfubRTQ89ay30SpF58k=;
 b=V93tDNFJ6OWVOSuxpaP2xuccnqJ4da1mnTvhNwRduR1rvaS0QMlCFPqP0lDnLK2T4SBhryVR0RQ4Bsde64rui0e9IUXQYWRtepQAfAPNW0+bjTs2w+iUEpePJfbowWOm76Us65lrSliBYBV3hmgAfs1IeDEKI9TFn5hDH3dC6zg=
Received: from BL0PR11MB3201.namprd11.prod.outlook.com (2603:10b6:208:6b::21)
 by BL0PR11MB3250.namprd11.prod.outlook.com (2603:10b6:208:63::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.21; Tue, 12 May
 2020 18:56:33 +0000
Received: from BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f]) by BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 18:56:33 +0000
From: "Daniel Walker (danielwa)" <danielwa@cisco.com>
To: Guilherme Piccoli <gpiccoli@canonical.com>
Subject: Re: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Topic: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Index: AQHWKI8NzFUGgINVZUG/2jdvopz1kA==
Date: Tue, 12 May 2020 18:56:33 +0000
Message-ID: <20200512185632.GQ31850@zorba>
References: <20200512172546.GL31850@zorba>
 <CAHD1Q_wJGA+b9hgLhUUt2fBK8aEOchis9EDW4W8JVQ1EreFwqA@mail.gmail.com>
 <20200512182749.GP31850@zorba>
 <CAHD1Q_zghTM0ahkc-MLaRktC356YrQX_yg6bGn9pFXuxY3enrA@mail.gmail.com>
In-Reply-To: <CAHD1Q_zghTM0ahkc-MLaRktC356YrQX_yg6bGn9pFXuxY3enrA@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 56f8f1bd-23c5-4692-529b-08d7f6a630b2
x-ms-traffictypediagnostic: BL0PR11MB3250:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB3250EA55201B01E3BF47155DDDBE0@BL0PR11MB3250.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nxq9TjiBBQACtVgF27F92Zo1Lqqnm0+EQrE+z+ycf71euxJevfw9AtGhdIPvs6Egn251oGbh+8ALqTvRLd+soZXiAOJqQ6L8hJ+PGvRB0orayHZmNKdfGQtqw0DEQCuwHWNp4QFHJA2xLqz+49s/APX+Ao5typfkJ/a5JypgF/f9Jdf1MieJq+8jxU/Wr3U+WS2hfLCbIKDhPdqa9YpGKyxNfUxLLgBobQjbXHk3DoJpaDu/49Yxq8MHaqpkAFeA+roX9fFLbmUbxvSQACz8Nk5fXyESehJnysstc2yIjjT0aUNNd5sXUDad01Hxn80K6bJTyXSoAYDUdFjrNs6QxqHvuKw98jm3YE0Oh/q49mt2D95ppnuGjTjq+RlN8rJnhI6WNMkHN2nvH3/7UQHCKOQNvNkAw9Sj46LFi3Saz/yk88HWYOml6vgoUaKKq16eO5fr6+WYErGs8IfeXQQxMzy1EhmjPHibit8GPk0WV+/EvF+q3IYju65eVxs00Qysm6l1w23C6dxONWQhT0zuWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3201.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(4636009)(366004)(376002)(136003)(346002)(39860400002)(396003)(33430700001)(5660300002)(33716001)(6512007)(33440700001)(86362001)(26005)(8676002)(6506007)(54906003)(478600001)(33656002)(9686003)(6916009)(107886003)(316002)(71200400001)(66946007)(2906002)(76116006)(6486002)(91956017)(1076003)(64756008)(66556008)(4744005)(66476007)(4326008)(186003)(66446008)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: cHrEbRePp9YmhCHSnJzvC4LiHgGnYquiELGliNn9Eg9OPPl5LdX9QKrsiwEn18dId5gl3J5iTimgND/SvNMhwUFMpZxannFEFS+uBGjRnAIzn3Cf0pg7UQsM/n/3Doj+A5QgG0OC3kB38fTxSUiD2yASe8+uc6fsnAZ6v+Mh9HK16e4TcUga0/dtJDLcNfnLQ3KhmvSRn9i4M2zGzyG2Vc5lrmHoIdI7n2rxOxV/YZCzMHqpN4f+UfSmtR0okk+EON3Ugf4AvZYjsMAdu/h8dNWTtg6cMqWXOQQti/i+RpfbjAZQQahNRF08RzgV8swDZAtxxsNAMvNq2G1LHP6/PKG10jp5FS/IlBCSXd/O2R6dvdnlgOGmhE9BFmjLeMEWOgwrhdYnMQNdoZe6fYW3C9BykQKSkgKcFSRK8r0k8xPwCu/fwFjSqBBUlM8ibZ7slWXc8YeKydd/FUuGO2gLgkA1404nCSFjFL8MVxPAPdpljJIw2ZWAfiPqgaS82OQ4
Content-ID: <0670214BBEC9E54E853EC3921ADF7077@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f8f1bd-23c5-4692-529b-08d7f6a630b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 18:56:33.6722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OY8uwFDbnub5zG6pqJ0P8TRN5GkEPwk0opkGAAX/UdVQOG5m3bTYR3lkGuwmw1OyYTsIbkFLvL48FzRfNWWVBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3250
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.15, xch-aln-005.cisco.com
X-Outbound-Node: rcdn-core-3.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_115643_966487_F8BCD613 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.142.95 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [173.37.142.95 listed in wl.mailspike.net]
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

On Tue, May 12, 2020 at 03:32:25PM -0300, Guilherme Piccoli wrote:
> Sure, I understood that. I'm curious though about the memory
> consumption of the compression operation, or put in other words: do we
> need to increase crashkernel reserved memory if we plan to use your
> gzip approach?
> It's good to be sure about this, to evaluate the trade-off of core
> file size vs. necessary reserved memory.

I'm not sure. I didn't measure this, but from my experience makedumpfile uses
more memory during dumping than gzip uses for compression. If our dump kernels
run out of memory it's usually something inside makedumpfile when it's removing
pages or something along those lines.

Daniel
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
