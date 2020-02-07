Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1737155B3E
	for <lists+kexec@lfdr.de>; Fri,  7 Feb 2020 16:56:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLSSpTKRT6U4oR9ieu2kfeLNzjMXJMhbZGuVv4ySx4o=; b=bKKVWGdTkH7kx5
	G4DU27PxpCawqjRr7khGusHY9oQal8wSp6MWpfnm9Bew9TBDsc8240WDfIPSiTCdbzHuVJ5bnhdOc
	NuhlPdwy2oLqikdZdgpbQ0vtDWzBHejPl9x+PhAATnNNsDyX29VTzAxntp8ng0Vpj+TZNHWAzCqhV
	ZSLyVtOMpx4bBTI5ndW/8B9rExgk4KRDyu2ehqAhgWpKNsBIxhPCIat2Jl5iCX1Tla7NalJ40UNJY
	kcWKtiotkyEczzgMovCDDWPY2Ghi5ncc4fIuXgwUzRj+CZ/vuBXjRawIx+ovis26iE/d5JSMHVa/n
	70DRkynB4Nau2DbOyHhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j05zk-0003zs-CP; Fri, 07 Feb 2020 15:56:40 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j05zb-0003rq-Pa
 for kexec@lists.infradead.org; Fri, 07 Feb 2020 15:56:33 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 017FYHP4110580
 for <kexec@lists.infradead.org>; Fri, 7 Feb 2020 15:56:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : content-type :
 content-transfer-encoding : mime-version : subject : date : references :
 to : in-reply-to : message-id; s=corp-2020-01-29;
 bh=mf/EJBs7eDZKi9wLKE04Os8OJ+zfeH1HKznW7aaMczk=;
 b=GUc1AiVuSPg8//UFs4cw4xfZubkhAFVOD/7iyZ14hos3aLB6Srua1FVvd0ye+Wn0aXTO
 lcKBBilna+8HztYYCEObM9XDYc7Or1BuIk+qsWIAFQ7qjj2kHeJtKJ729197Toep/WbT
 7h/V1BmOBY8DwLFtgKmrCRCP0B66Mo2b6R4AobvO5X1EyeSYZbrTMGY49lefBhtzYHIq
 B586neS061Iv1bY+661q2SxrR9amk1LUXrixDBsIkDeew/igwGht77kqjAU9GQGeYQJm
 3qLwOMCdU2VTUYYdAQ2OEYgU81ar7tTjSi2RfEHDAmnfeL2WSvTGzLhsPPCaEOIb17oS tg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xykbpgtra-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Fri, 07 Feb 2020 15:56:26 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 017FXmdu191308
 for <kexec@lists.infradead.org>; Fri, 7 Feb 2020 15:56:25 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2y0mnnupup-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Fri, 07 Feb 2020 15:56:25 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 017FuOt6014540
 for <kexec@lists.infradead.org>; Fri, 7 Feb 2020 15:56:25 GMT
Received: from [10.39.226.21] (/10.39.226.21)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 07 Feb 2020 07:56:24 -0800
From: John Donnelly <john.p.donnelly@oracle.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v6 0/4] support reserving crashkernel above 4G on arm64
 kdump
Date: Fri, 7 Feb 2020 09:56:22 -0600
References: <20190830071200.56169-1-chenzhou10@huawei.com>
 <2a97b296-59e7-0a26-84fa-e2ddcd7987b6@huawei.com>
 <8ec4943b-5a6d-2291-3adf-099d7a9c943d@Oracle.com>
 <E7504B68-61E5-4CEB-A0FF-0B0EBB7DAB5B@oracle.com>
To: kexec mailing list <kexec@lists.infradead.org>
In-Reply-To: <E7504B68-61E5-4CEB-A0FF-0B0EBB7DAB5B@oracle.com>
Message-Id: <71144677-5A5F-424B-8654-6FDBB29C3211@oracle.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9523
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=954
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002070119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9523
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002070119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_075631_918135_DFBAD7EA 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGksCgogIDwuIOKAlCBTbmlwLiDigJQ+LiAKCkhhdmUgdGhlc2UgY2hhbmdlcyBiZWVuIHByb21v
dGVkIGluIGFueSB1cHN0cmVhbSByZWxlYXNlcyA/CgoKClRoYW5rcywKCkpvaG4uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlz
dAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8va2V4ZWMK
