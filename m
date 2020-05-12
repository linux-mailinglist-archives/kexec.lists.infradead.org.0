Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE321CFC1A
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 19:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=031xTEElPixnB9nCmioPbuiEDPqOZ8pQ97IBZodZIdA=; b=J0a484sXtJP8gT
	olTohGH1RfrLgZ92VqHaZ4UF8YFvUq9lUxpQwLqnQvrpt764o3zUDFQIE0czCvwlOsEFLr74LuGYx
	mCHKG75pADM1AlCLe4RAjNtM3d1+wLo33DwqTRNnqLxXaH3RSgsH8O3HNl0VoAVMgATuNpG6XbCVE
	yAnYOzbUPDcmk26pU08EDDHVC0lBdW0B2RyafSgiERqsOCa1++Btr+kylP+bUMR4cYlaJxfUqOnXj
	yBju6jgzHNT9wLyyILv1QWe4iAl0EzyPx/T5hJnxDpw6Zx6AIV5y6G5AV5P7COr6E62XEb76F8hQg
	UOjD0OPNcfCIhgrr0vlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYfI-0000ce-BT; Tue, 12 May 2020 17:26:00 +0000
Received: from rcdn-iport-4.cisco.com ([173.37.86.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYfD-0000av-3u
 for kexec@lists.infradead.org; Tue, 12 May 2020 17:25:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=991; q=dns/txt; s=iport;
 t=1589304354; x=1590513954;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=AIpEytosdKPmfONkhG8GnzZ+8Zh6DytB7wcn0zvLYLw=;
 b=irVqk1YhplCYJ17AeIm1x9vR/XczNIMoaMOEBbpVbM2rGIJtNpgAs8mr
 fDEIJgCV9qxauLOnxqvC8c5Hq5Dxc+wC7M4GZ6Hfv+ZzRCH4YirR2seLs
 4tqmDcF09HvQ3LnG5i5WnwID0+qgjUTzsR4Fbfs5wYbmOoYF2gxAwaCPb o=;
IronPort-PHdr: =?us-ascii?q?9a23=3ANHifxhbmi37Cy+Ox9FM6Hzr/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el21QSXD4Ha8O5fzevQvbrpVWEJ7dCGqn9ROJBPVh?=
 =?us-ascii?q?pQj8IQkkRgBcOeEkT0IbbsaDByB8VNUlJpvhTZeUhYEcrzfRve93u16zNBHh?=
 =?us-ascii?q?TkKREzJ+L7AIfegs27keeo9M6bbwBBnjHoZ7R0IV2/phnQsc9Dh4xkJ8NTgh?=
 =?us-ascii?q?vEq3dFYaJY32RtcFmShB37oMy3+c1u?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DhBwCM27pe/4MNJK1mHgE8DAILFYF?=
 =?us-ascii?q?HgVQkLQVvWC8sCodgA5x5iQSBLhSBEANUCwEBAQwBASMKAgQBAYN/RYIHJDU?=
 =?us-ascii?q?IDgIDAQELAQEFAQEBAgEFBG2FVgELhXQWKAYBATcBEQE+JB4nBA4ngwWCSwM?=
 =?us-ascii?q?uAQ6lHwKBOYhhdIE0gwEBAQWFPBiCDgMGFIEkgmOJYRqBQT+EX2sZAYFiAoF?=
 =?us-ascii?q?LhWwiojSQOwqCSogbkAEpDpMCiikBkB2JWpNQAgQCBAUCDgEBBXhcAzQpgS1?=
 =?us-ascii?q?wFYMkUBgNkFiDWopWdDcCBggBAQMJfIx3AYEPAQE?=
X-IronPort-AV: E=Sophos;i="5.73,384,1583193600"; d="scan'208";a="759101135"
Received: from alln-core-1.cisco.com ([173.36.13.131])
 by rcdn-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 12 May 2020 17:25:49 +0000
Received: from XCH-ALN-002.cisco.com (xch-aln-002.cisco.com [173.36.7.12])
 by alln-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id 04CHPnhU022514
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <kexec@lists.infradead.org>; Tue, 12 May 2020 17:25:50 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-ALN-002.cisco.com
 (173.36.7.12) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 12:25:49 -0500
Received: from xhs-aln-001.cisco.com (173.37.135.118) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 12:25:49 -0500
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-001.cisco.com (173.37.135.118) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 12 May 2020 12:25:49 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=amK0xvUDfzJmTvmNeyJQZw4rMzsDdCpq8WjbVHiMOn0bb0IieUVbSpA9z1C6wLR7TlbaD1D7kRC2aT6u1VKxPVn9DUFP508SZgBdYgxzm6TqAx28CwxEWtC5UwOmFwoobmmxDCKZwgb2vk4DKMcx1bf50MxYMU6HJ20uDxVkMen/Uk3CcLlah9nSWW5ZrvDqzy6Rq6qvdFqYwiEUVCUoSydrUOyGdU02R3mY4FYPG8VK4HCpMGuC5RRo08GAVyH8mAww1LC3x+SpHzUhi5EUiWezK70A64abdyF0VhDY87OfFMc7KKL0cF1vpZgIuaGA0atxuUAXo2Hm0r+f3saAgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AIpEytosdKPmfONkhG8GnzZ+8Zh6DytB7wcn0zvLYLw=;
 b=E6XlWD2WUyFbNEtwvp98uhkJ1/UcRG5Oa3KOA6UbfPmjvcSsIbXVsX4z3zrZ0Gch7LF1SY4ct7ky4V4OzpvhyO7T6n7RxZbu4HpQNBAMh+LasQu7/Wh1sDyy9WASu9VCLt77FKu2Nr1NgjGfFG1Gu11fU95BrA4gJNU60NPAmFCJchjhpW8tZGuVAVvHCBB9wf0cYEomJbOuCQnKClcEWt3sEY32n+kYiYPPcCfxmEWrs3zXmLSLueYcNb5Hf32ZsL0JB/dn2UnxSNklpMYgw1LckfxkXWfd1/ZcNo47xbXH3lUEFcBHms1J1BDvoKo6qFkdLGvN0vMFiVZ0quTScQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AIpEytosdKPmfONkhG8GnzZ+8Zh6DytB7wcn0zvLYLw=;
 b=MiW0jxbqKEUO2lEOk+zEFZJC0/APK83WP3tIJ78Vc6KAuooPB8H+fuxjcVMvUaYAEU0y/NzKRASlKh9BvjgF+xFcyDPN4rUPU5vLMZJbxo0g6sIU3DGk6yQkK9NxWStQCQmC1LqntjfEhVEmhRQQeyJUSBxN/M6dLZK6+ADin4s=
Received: from BL0PR11MB3201.namprd11.prod.outlook.com (2603:10b6:208:6b::21)
 by BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Tue, 12 May
 2020 17:25:47 +0000
Received: from BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f]) by BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 17:25:46 +0000
From: "Daniel Walker (danielwa)" <danielwa@cisco.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Topic: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Index: AQHWKIJfsgIq+CayDUSimqmu86c/pA==
Date: Tue, 12 May 2020 17:25:46 +0000
Message-ID: <20200512172546.GL31850@zorba>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.9.4 (2018-02-28)
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=cisco.com;
x-originating-ip: [128.107.241.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d9ed301-2995-44e2-e517-08d7f6998207
x-ms-traffictypediagnostic: BL0PR11MB3521:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB3521F8BEC1D3755D0A56DDA1DDBE0@BL0PR11MB3521.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KJeWVdjW6JT0vdeKYs0yOqFILoieOcV9g6ZImpgxyVCKhjo+Dcq6E4Ph5ktN2/AFX73XxNaILQ1T3Be63476yUVIGHOdTUTOU01slcycE2b35qG+MPIno8ciZDZKnxnUbpEIWpoR3IzVwo9y2AwKmoJPzPMojAP8wvaFrql3SCdaGYDYmhOsZ1veAUf13yBNEThQ9YgGYYgxFD2+gArsEYBGROHpn7PGwS4+bTkU5/jNp9BkiQIden/mQn3A3VQXoXXcuUb9uC7dmO6vdKQMGL8FEg8Ie4cI4Sjg1XG2VR76901SHpbAfnFD2Nt5h65+RPcS/N16pa1BeCLtDlmd8pBKNzVwut4aQlTJI88+xjq8+Fk4CI7DXkqJDnTZVEFRcNS795GffngjPn/DkNjVKauphWV5yAZVUTmqctrcfD4vgR+ZSyu1pEjE/9XHL8F7sLv1sJMjW45z6mIASta25wOXntgHKndR1OcAspeGYyevQBwptSabk2fAeE8c9yDHZEpB025SMgntL1S4ysNVQhNnZRIexZJ682X0Qr2ifauuxhYUqYVp9ONCQXygpNRiP1F6J6/kOHzVpDbTTzcQ1wxuvIfy6bV2tcqHOzk7ygc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3201.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(33430700001)(66476007)(66446008)(8936002)(966005)(1076003)(186003)(64756008)(66556008)(107886003)(5660300002)(4326008)(33716001)(478600001)(76116006)(91956017)(33656002)(26005)(66946007)(6486002)(6506007)(8676002)(4744005)(33440700001)(316002)(2906002)(71200400001)(9686003)(6512007)(6916009)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: FhreRAzYVumwIS2DoKphvkaXnDrBmqGmF5zZZSl440OjyEYrT9l8Pvf6Qn13o39VoqYzjN0mes4FPYgzmOrX+s1QR5G+bM+QZ8vTfdGoJZwExw7V2eyQhOeuhEpklPFXlAGC8jCiPfDg7PZOTNMywQNWyqPo0K0tOxGzJkYQK0NN2ITOAJnlgxoWeiQv5vjzv8mtmlLuvrk0yqVA8QpaL4aNRW3T0SaR0ezmY/nV1ZdYWNTtdyje0N3nzM5ZF8QEJLgYSWY3wDe+Fkl9rIbKeQsbY61Y1WlYSC24R2gEQXp3+34jAm+P36a344Ci7WgvXnJ17jB6ovVBucWLW2moyvJYWKcElO9ArihgW73uC6vouUAH0WrcXT12XaP8OLARdHaA919whvB7H6RJ68f1YTkppDlc2jC70bsm3HJsC2QTiHCY9AKlfqpLj3c5JYkw1zYs7EHkOKBUG7iLl5lc2HCjmeo+MKIMbyZ0SXMiYglo2zS9DLIvW0vi2hg8qrB/
Content-ID: <72E89CA3326DD64B88C4E935B716E06B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d9ed301-2995-44e2-e517-08d7f6998207
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 17:25:46.5770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k/2vTBaFesBPGG2al7ID2Iv+O6jpfQlL35dAREH5odbY/2toOpvejc14M5OQy5o8DTBnaiUBEoVN58Po/2+66Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3521
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.12, xch-aln-002.cisco.com
X-Outbound-Node: alln-core-1.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_102555_268275_FEF1E614 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.75 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.75 listed in wl.mailspike.net]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Hi,

I created an enhancement request for makedumpfile here,

https://github.com/makedumpfile/makedumpfile/issues/1

I found that compressing a flat core with gzip significantly reduces the size of
the core. Here were my findings,

32G flat elf core -E -F -d 0
33G kdump core -d 0
16G kdump compressed -c -d 0
1.9G flat elf core stream compressed with gzip -E -F -d 0

My feature request was to implement an option inside makedumpfile to gzip
compress the core output. This can already be accomplished by piping the core
thru the gzip tool, however, because makedumpfile already links against libz
having the option for makedumpfile to do it allows the gzip tools to be removed
from the crash kernels initramfs there by reducing the size.

Kazuhito Hagio had suggest adding the -C option instead of repurposing -c to do
this.

So a resulting command line might looks like this,

makedumpfile -C -F -E -d 31 /proc/vmcore core.gz

Thanks,
Daniel
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
