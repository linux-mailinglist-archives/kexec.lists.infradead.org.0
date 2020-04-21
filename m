Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9AF1B2E2A
	for <lists+kexec@lfdr.de>; Tue, 21 Apr 2020 19:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ckx/qWTaoJZh2YsW340KYCUWOAOjnEd7DjcuCRuG68I=; b=uI2Eaz2Q66n6xa
	Tu+NkVJ42jarC//akrsA69KsVBlYClKjDgJVrf34/1x4cngdcR9QmJKFI6P5AKMHVyUOi5p/ez/sy
	N4HMBbSkFMbNDaCcvjnrb9cDJFlLdGcN6PjyIFTHuwdL43ypGVAwYlXmBwq10IWJ94m6OuXcwFDG/
	/SuNhHtqPzfrIsPhhaBAOgKq2WHFx537FQPr7cBGHISXJUQo3eF5DYtXY74vNkLbKrodowjEQnTel
	oCn1hcPTrrZmW7ZyrnR1je7jR3J7I/T3dHB4Dti2UT0NNOLshid0EyC5UU+P65+IIT1/JPP/W5T1k
	muz4UIZeT2lzWSUqA6ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwYi-0007mu-9f; Tue, 21 Apr 2020 17:19:44 +0000
Received: from mail-eopbgr1400074.outbound.protection.outlook.com
 ([40.107.140.74] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwYe-0007k0-PZ
 for kexec@lists.infradead.org; Tue, 21 Apr 2020 17:19:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=du6w9DbKbJQdItE43kmxYLNzYI66A8Jii9Xk965FmKAFayvuYxvyHwLMALxuGsnpDMfTs7LVUmias0VgB3dMp3PV/Nkrit4byYP6FVjhA893WOWCUS50guy0nZLqPwO79Nu7F6DlclVzP0FGcYNFuyw40lG2294L/dNdcCJotvtu4Ne2tqxbwGat4hGo/kzpFxi/TFeF5WldyuEx6AVf/zRyNaPs0iQPFavpegtQXdY9piJ2yw4yEQJxBlH7I85zZwZ+4kPiALbKwPEEqEZmLglL+V4t9jD2QzqT+G4u04yijrAyJ+QLQgdqYwPH7B6sU8i3jTNes/bK3aKsEWHcjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nPKt5ru54c6Fc4zhIOzhQ4cxC/UOavj66zvZfYlTj9U=;
 b=GaBkVSz7jPt3Fvwnu2WFbhm+gHDPGfZyEM/r9Le4DE1PH+adorZbgw9Jol7ddYtwrwYacrJdgViUEDXtDc0iDj2pfyMB/ruUvjSaVn8xx3GcruG8adtKT9gkQvRAHenm5JznoYs9AibG6Sw8DM5tFQCKYaE4pooW3k0HHNsLjPC0Q4NjpSg/ngTXJym6ZlG0yThc9BvsGWIDz1Gv0lTZU2RXa5N3RC5xpsxdE837eSkW9ZVV9fosjavtUynfE9obWJ/lYZ9muV/mXmYJi1VHKjq6sb2UP45nSzO7PZGRnODVaSklGkcNmin59YTHLvwBiBXcoCaxFgxA0Y241gJysw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nPKt5ru54c6Fc4zhIOzhQ4cxC/UOavj66zvZfYlTj9U=;
 b=XWbAzKVR6c5fPBEkusOUbdAKCYHqSY/RvdNZGHVBpFU4RMne6g8Pomx7kST3bMqOtFisq9Xu0+CAiZVF/Kxka/fzWbpGqJ9wxKG7caBrsoW0+NhieBFlwlwcP+QWk92fWfhCqwLmHv9mN0T7qnvGdLILmZ6nWz0Vz4xUZ+LWxeY=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB4488.jpnprd01.prod.outlook.com (20.179.184.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Tue, 21 Apr 2020 17:19:32 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 17:19:32 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [ANNOUNCE] makedumpfile: Moved to GitHub
Thread-Topic: [ANNOUNCE] makedumpfile: Moved to GitHub
Thread-Index: AdYX8uCkJ8OZV82ESd2gZ/KMQZKSvg==
Date: Tue, 21 Apr 2020 17:19:32 +0000
Message-ID: <OSBPR01MB19912B1799B8D12FFF70242CDDD50@OSBPR01MB1991.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71631e97-06ef-4d11-098a-08d7e618280a
x-ms-traffictypediagnostic: OSBPR01MB4488:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB44880DE6D117C35E2037EE0EDDD50@OSBPR01MB4488.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(366004)(6506007)(71200400001)(5660300002)(478600001)(52536014)(2906002)(966005)(26005)(86362001)(33656002)(66946007)(76116006)(64756008)(66476007)(81156014)(8936002)(66556008)(66446008)(7696005)(55016002)(186003)(6916009)(9686003)(85182001)(8676002)(316002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DnCWhgx5ETA4H+mqzMAmz860iLT8OV+uDCNwKPqBJ5igGX8aXhp2MVV/4LFQWle8wL6bOR/aRSqoUDqhlY2dI4jg+xI1oY5wJTAjvEAmM8tSZvLyTahXWrAbwbclE7p6+RodsRBjwaDRHKDOmefJy2SP1CbaLfQ8HAVNtedk/U0zhaitDH+vW9RFYAtDtlJVYs1NCWzFqDVHV5SdWJDCcYsA1YU952vhUfifuEL8XOWV+XOcEoQxg3X59oYO+AX7aQIPH887iTnD+ttTv2EI7BCo4aR+LvoCPnxZrLYWbkvl+csL3R6rTq8ljR7kslnHizrI/OSelms+KKRlGenBesURVAMbiwarUdXMq7wRCEHGSBv/3FG/HWQrVQrL3PmGtSCXnlZLWlZnbGV/tq6ZDQenh3EtDCtGtn8R6PSiTSc8mNbP71vbwHvustHdfle/VaMaThipK5hgnEvXBO00upApuRBReYX1uSHwGZjbbFrDktVUqr8PDBv9iMmCOmyMrLOeEK3kGZz8gu+U8RrtSg==
x-ms-exchange-antispam-messagedata: TYskVfGyKmlAnjP7KBh2k32dD09Ii38z8VUkIzps6oh+38L2vs66hyYoIQI0JnaNCYvqLoPT8Z1eRuiNaE+RzKaHm8g9mdZuZV9dbETPeKq/wi7z1EApKL35E7fnN8ccjx2laFAo/HSJ3liZ9PWgTA==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71631e97-06ef-4d11-098a-08d7e618280a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 17:19:32.0755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oP4wyIEcXsGBdjPpN270liVyjoHlrG5l7C7NzBMZ+xAKcigc+6TnsUXd6fgbrpuAhiji8jsHe2AS4QdtWu2DEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4488
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_101940_895521_87DCB787 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.74 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

The makedumpfile project page has moved to GitHub:
  https://github.com/makedumpfile/makedumpfile

To clone its repository:
  $ git clone https://github.com/makedumpfile/makedumpfile.git

As announced last week, the devel branch was removed and the master branch
serves as a development branch that will contain all patches that are queued
for the next release.

The SourceForge page will be kept as is for the old source archives.

Thanks,
Kazu

> -----Original Message-----
> Hi,
> 
> I'm going to move makedumpfile's project page [1] and git repository
> from SourcrForge to GitHub for several reasons.  I will announce it
> when the preparation is completed.
> 
> With this move, I plan to discontinue its 'devel' branch and use 'master'
> only.  We have not merged any hotfix directly into the master branch and
> distributions have backported patches in the devel branch into their trees.
> I don't think we make much use of the branch feature.  I'd like to simplify
> the process.
> 
> Please let me know if you have any concerns.
> 
> Although moving to GitHub, I continue to prefer you to post makedumpfile
> patches to this email list for reasons of a lot of good eyes.
> 
> [1] https://sourceforge.net/projects/makedumpfile/
> 
> Thanks,
> Kazu
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
