Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8084B1CFC81
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 19:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEBy/WkKTJGev4IJ1lBa+Orrj16j2f027v7NQH1lrZY=; b=bLy7IC8Hyoce0u
	uJAAWZCzTBjDSIfwjYvIBnfIfv+z7SfgQYX99EDHh6U+keocNkLozbOWzRBpEups1Q0ChlsCc3ojh
	3w8lX9S7c2sxDRt7ileFhDxoBkDtkS/P/U0IOHP+ZsoXd3eb0R5VDOFj+8t2/KzIBZD5FjrsfK0Dx
	7ypVx/SCFXO0hUifVb57E51hGpDf/OHyv+WLcTaWGPOGOrfjU1Qmfs175WjbxNdBmaWN3CQjlhb1p
	t7CTBtzLkMMYEmDnJfJkDwIdikmG01NMaj9CojlNeCrobr2wYHQiEnV8oCIYJo1gAV7TaCf2YqM5p
	IhofBIam7xnyOWWRv3fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYyB-0005SO-1u; Tue, 12 May 2020 17:45:31 +0000
Received: from alln-iport-7.cisco.com ([173.37.142.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYy8-0005QV-4G
 for kexec@lists.infradead.org; Tue, 12 May 2020 17:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=286; q=dns/txt; s=iport;
 t=1589305528; x=1590515128;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JMzl27H9QcD8m5neOAPCQnk8Lokr4ZIud+EsUakMBjQ=;
 b=YmxeaVmiDMZA0KgeI5Ff8YVXN4uPkS0TqEzlpA9T7+9cxS4HuoduO2JX
 mdxBTtv37aYTaG1lEj4jJa9mBpMaFn0P+KxXMd5IwOVNVFSNn51kbd2sO
 N5bUOb1iiuLeNEeJ/CTxE2PALGRq2MbmFZiiLE6jO6RMyr7rNi782E7Wo Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AIf1KwhNERCtf3uWROv4l6mtXPHoupqn0MwgJ65?=
 =?us-ascii?q?Eul7NJdOG58o//OFDEvKwz3ljTVI7f5rRPjO+F+6zjWGlV55GHvThCdZFXTB?=
 =?us-ascii?q?YKhI0QmBBoG8+KD0D3bZuIJyw3FchPThlpqne8N0UGH9z3bFnf5Ha16G1aFh?=
 =?us-ascii?q?D2LwEgIOPzF8bbhNi20Obn/ZrVbk1IiTOxbKk0Ig+xqFDat9Idhs1pLaNixw?=
 =?us-ascii?q?=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AUAACY37pe/5tdJa1mGgEBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBARIBAQEBAgIBAQEBQIE1AwEBAQELAYFTUQWBRy8sCodgA41FjzO?=
 =?us-ascii?q?JBIEugSQDVAsBAQEMAQEtAgQBAYREAoIFJDYHDgIDAQELAQEFAQEBAgEFBG2?=
 =?us-ascii?q?FVgyFcgEBAQIBEigGAQE3AQ8CAQg2EBQeJwQOJ4VQAw4gAaU1AoE5iGF0gTS?=
 =?us-ascii?q?DAQEBBYU1GIIOCRSBJAGCYolhGoFBP4QhPmsZAYNJhVIism8KgkqYHCkOgj0?=
 =?us-ascii?q?Bmm6tRwIEAgQFAg4BAQV4YQcrgVZwFYMkUBgNkEAYg1qKVnQ3AgYIAQEDCXy?=
 =?us-ascii?q?MdwGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.73,384,1583193600"; d="scan'208";a="477438676"
Received: from rcdn-core-4.cisco.com ([173.37.93.155])
 by alln-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 12 May 2020 17:45:27 +0000
Received: from XCH-ALN-004.cisco.com (xch-aln-004.cisco.com [173.36.7.14])
 by rcdn-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id 04CHjQYJ009361
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 12 May 2020 17:45:26 GMT
Received: from xhs-aln-002.cisco.com (173.37.135.119) by XCH-ALN-004.cisco.com
 (173.36.7.14) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 12:45:26 -0500
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by xhs-aln-002.cisco.com
 (173.37.135.119) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 12:45:26 -0500
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-001.cisco.com (64.101.210.228) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 12 May 2020 13:45:26 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Etl5AzWV1pFHDuFRyK27i0qJk1kmoP+sLegVdzmGG/kjuzU5NwhlBOgbQKs33kmBClIfCaLwFXRsyLNh7q1nbogHyLuslrm5lrwgL9DFRPdKg2eOg0oY2Hx9Anpw03Ek5qlTSa6lRy4T4Gjus7fKrEyFdU9JusEmaArMcrR9eggyRsoMDWeU49GAU8QwJFoB6N0qKPZXBc0pAgyxEp/MCieAzJ9sCFiEdZymZxJIIvSx11Ml+Czm9HiwU/D0n2zmqvtyDYWiPG2cB+86nxkrc8TxX7FHYcl3hR8Ahfc6L6OF6ygwsk4tGIhb+y8nZzfD9oNhC4HvV6QgMmBq3rIreA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6yEXEw5HlHk86RPZgr+ZviDtPVXlKW2a0RXM0XRQ7j0=;
 b=n+mzE4ZnLD0Qjr00IhaqIQy1eJHR+D6MMqkm/I2e6umxayTEPQW0OkCJZiEeJtos6me4E35nobXLzF3ycPO/yZ8nL7ii/5hY6rFY4OVHAOl2qSU/sOPOiXnhUsy1ZsKYNNcbBUP0zKK+a3cv33WpapPSlbj5cAU+tW9NF0m9XJdLGaBF5IigW2YeTJvDMR5ypp3GjCiepeKn5yHVNxaxswbZacyROOuXC5B+Glzx2m++NMoIMIFpm6ASWBt73OQTmMtayISC/Md8w/MBMVlJerHyoG0tZiSy/+JOBJ/WGl9s+Hyi3urb6JtJP79xKLYgqB61wEtEiNweJqyOF0+3Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6yEXEw5HlHk86RPZgr+ZviDtPVXlKW2a0RXM0XRQ7j0=;
 b=wIClwEFjHDEYhO8E57pq0dRmDJ2gAjUgqSPJv2k84jn9dS/OJ3OmfzlN0EVXf15+WEz9HrYG4m9O7AIoLKRzwBxPAr4tNeNcJBHKXl4s55nwqT8fSeLUj3FvFaJb7FMn1dBwKcjV3z7NKY+xX8QLWu4b9Uym8qoebkUOvGjW7Dg=
Received: from BL0PR11MB3201.namprd11.prod.outlook.com (2603:10b6:208:6b::21)
 by BL0PR11MB2882.namprd11.prod.outlook.com (2603:10b6:208:7f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.29; Tue, 12 May
 2020 17:45:24 +0000
Received: from BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f]) by BL0PR11MB3201.namprd11.prod.outlook.com
 ([fe80::c57:7e06:31a4:fb3f%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 17:45:24 +0000
From: "Daniel Walker (danielwa)" <danielwa@cisco.com>
To: John Donnelly <john.p.donnelly@oracle.com>
Subject: Re: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Topic: [REQUEST] makedumpfile: stream compress flat ELF format with libz
Thread-Index: AQHWKIUdKwvgAJkCKEyzDBP1zPA8uA==
Date: Tue, 12 May 2020 17:45:24 +0000
Message-ID: <20200512174523.GM31850@zorba>
References: <20200512172546.GL31850@zorba>
 <69649640-B477-4969-AA2B-2E03587944F1@oracle.com>
In-Reply-To: <69649640-B477-4969-AA2B-2E03587944F1@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.9.4 (2018-02-28)
authentication-results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=cisco.com;
x-originating-ip: [128.107.241.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b6d85dc-8de9-41b6-9f8a-08d7f69c4021
x-ms-traffictypediagnostic: BL0PR11MB2882:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB2882EDC6C07CB44766CC5A47DDBE0@BL0PR11MB2882.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N4ucbHAz7zKCnPXUAUMpHW0K4ParsTCswPqzEQzDdN6xhL3H9HvrIh2TtYGwl+SgnKhtUz3TtOAI3hcNTxHR4+fK11zJGCYoG58BKeilqNiDZyqEuaLo7soHfOxFtU932Zs8ZUVvRv+s04VhkbUQXI1wS1MN0P8aaQoEtKQX2lvYrVlgaTP1JPhVfl/b0XSVNuEMT/eVO4UWUgWJ3ERwjlahn0hroau+ePOA6VC9ix4um2v/zOcD10V86b50o3C5GjTS9GeHzl4PLTcPL1Gcy1RHU197tHVf//Q683/D0LgCjcJTutiIbPhhPlTyyi2ih9m+7awhWTc6o1+WFtmKG4ZflFbREts3ZQUUSQt1oVgEJrMK4u0mdLVzXtM1a/dgGEXrfaK5FK5YqjgYizN7F+kCjUSgwmFQL9SiKTiU2tsswzQuxloY9fo/gpaQwwnmDZRz4sOmPCTpc+T9ComrXasPjA1dhAtwx2bGji9YiullNW0hbGVQI09go0ZEiCKMpL536gnEyrgUyK41jsIKrA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3201.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(33430700001)(33440700001)(9686003)(26005)(66446008)(186003)(66476007)(64756008)(6512007)(91956017)(4326008)(71200400001)(33656002)(66946007)(76116006)(86362001)(6916009)(2906002)(6506007)(107886003)(558084003)(54906003)(8676002)(66556008)(6486002)(1076003)(5660300002)(478600001)(33716001)(316002)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PpGfficCuIGm0CZlFeQ7+QnoELByodN1KdUFvR5cERjs3aDk0MoEke77rEzHHfMt62l5NdA8aClfiNZ2FPKTJErVKSYqyoksv4FBgvZsodk0zYWS9EYD+QZc++I2e6xCWwzVWbHV4MyA305Rrb4O+EIJtwJPG9QU9Mz2wtlNRqpkFm71HbuTpyUso79A8f/vmqDEGgMK7MzGc5jRKifY0urq3LogjfD+VsMb+Hd0ApV3wbhOaGDx6v3bLA1762v8XtNX6XHvZfMPjL+3vqtCjYEyYMFsMgQogcFHxfxtIW/vIwxZQXqwl64bxPMRa9Uei3g01iD/eZXUNDWmoEVa72uR2auelldLfBvTmVGk99B9j3R3wV1wJLzKvfsumm7J68p3bgcv3rGStRjYJLN4J06ovD66RiAtTza2RYEsFqK9dQuFQ0+AN0+G4pcMRJAwjHc7itA38MpBjtjs3e3TTRXq2ol0Fn1OTgJO0UEXZ46QHlG2gvwUmEbVeEFGNhD8
Content-ID: <3CBDD08183FDA64EABCFDBCB08C59582@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6d85dc-8de9-41b6-9f8a-08d7f69c4021
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 17:45:24.6421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LBF3IgkBJgCiHsdpLlGGyzk8XdFv+d7N3uDJdEi14aUBjPTkUf3lND3+vBk6pdDj1dluFLn5hwYtJkCk+Bl31A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2882
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.14, xch-aln-004.cisco.com
X-Outbound-Node: rcdn-core-4.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_104528_278771_2FCE7F40 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.142.94 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [173.37.142.94 listed in wl.mailspike.net]
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

On Tue, May 12, 2020 at 12:38:42PM -0500, John Donnelly wrote:
 
> 
>   Hi Daniel. 
> 
>    -z happens to be used by tar and rsync to indicate compression ;-) . 
> 
> 

This would be fine with me,

makedumpfile -z -F -E -d 31 /proc/vmcore core.gz


Daniel
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
