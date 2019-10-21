Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876B1DF27F
	for <lists+kexec@lfdr.de>; Mon, 21 Oct 2019 18:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:Subject:Date:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJCPshqgkaIBwryifbTXemLCbCibrhdhiRt4FlgXEqw=; b=J1//tqmyzqUHid
	7YDLoprNtLIv+OrI/thRWcOL+HhCKbmd4mB2a5YTUxq1aZT296RhdvQ0KAQVx6bKeH9LbpcMjAyOb
	sy3j5x7kMLIN/7OKdu9nz9ikwz8osrzihTEbqMPhmWX2TrvQLb90dsBwK8tVE9JQrXS2Q4x6UNQ/X
	Ix13u7dM79gE5eGSdbcDM54FNhK8/IlI6OBJDY0vEReYm2zo6q6WbQ234gmRgaC44VHqFVHIH+RlR
	0klyU6TTPIhosxpXdhCYWXNfGEIpS02zRrLGGbLelkT5D5mdFoSFVp71u7vtnXCicKP6SrGOewwpX
	PXh88W0Z4T+HYQ3rCMJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaFK-00075O-5S; Mon, 21 Oct 2019 16:09:26 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaFG-00071R-VU
 for kexec@lists.infradead.org; Mon, 21 Oct 2019 16:09:24 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9LG4dHD149596
 for <kexec@lists.infradead.org>; Mon, 21 Oct 2019 16:09:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : content-type :
 content-transfer-encoding : mime-version : date : subject : message-id :
 to; s=corp-2019-08-05; bh=vGqlj9JRj0sQBDlj2uupTfs+zJKrViW7feoSyFZjd2s=;
 b=QS57qmKumeJp2WWL3ofGfLcBbDbfg0wTxv407NfRqEdYWGv+ntDVTauHHQTZWjrLoq08
 i4cK6Td8nnR1G7lgxexhFaxIqA469dq6pW+upRIOr98ZAtgLxvqg1U5KnlqjnV27iCDi
 sutS25ennW0GP/si2xrrhhpQrcw6mch5yjw5Cb/WqW/c06CwgMkx1nbKgNLv6BdAdbva
 IyTjssGMSkaF3Ve4KxJjXPwipkroTn6lRX2EK/yaHhi5IpIs8twv7pEbNrAYfIE9CiTZ
 91YuU6znxr47QwoR10JtjHkboe1ikIMCK0dqu7NcIMC68hd33CsnH7wq5gkMCwwcEjFy bA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2vqswt8utk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 21 Oct 2019 16:09:20 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9LG84VZ096894
 for <kexec@lists.infradead.org>; Mon, 21 Oct 2019 16:09:20 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vrcmndpj4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 21 Oct 2019 16:09:20 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9LG9JUZ014641
 for <kexec@lists.infradead.org>; Mon, 21 Oct 2019 16:09:19 GMT
Received: from dhcp-10-154-105-47.vpn.oracle.com (/10.154.105.47)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 21 Oct 2019 16:09:19 +0000
From: John Donnelly <john.p.donnelly@oracle.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 21 Oct 2019 11:09:17 -0500
Subject: Makedumpfile help for 5.4.0.rc3 :  Arm 
Message-Id: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
To: kexec@lists.infradead.org
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=644
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910210153
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=730 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910210152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_090923_105243_00526CAF 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

CgpIZWxsbywKCgpLYXp1aGl0byBIYWdpbyBhc2tlZCBtZSB0byBzaGFyZSBteSB0ZXN0IHJlc3Vs
dHMgb24gdGhpcyBwYXRjaCBmb3IgbWFrZWR1bXBmaWxlIDoKCgpodHRwczovL3NvdXJjZWZvcmdl
Lm5ldC9wL21ha2VkdW1wZmlsZS9jb2RlL2NpLzdiZGI0NjhjMmM5OWRkNzgwYzlhNTMyMWY5M2M3
OWNiZmRjZTI1MjcvCgpBbmQgSSB3YXMgc3VjY2Vzc2Z1bGx5IGFibGUgdG8gZ2V0IHZtY29yZSBk
dW1wcyBvbiB2bWxpbnV6LTUuMy42IGFuZCA1LjQuMC1yYzMgSW50ZWwgKCB4ODYtNjQpIGtlcm5l
bHMuCgpJIGFtIHN0aWxsIGhhdmluZyBkaWZmaWN1bHRpZXMgZ2V0dGluZyB2bWNvcmVzIG9uIDUu
NC4wLnJjMyAgIEFybSBrZXJuZWxzIHdpdGggdGhpcyB1cGRhdGUgdG8gbWFrZWR1bXBmaWxlLiAK
CkkgZ2V0IHRoaXMgbWVzc2FnZTsKCgpCdWZmZXIgc2l6ZSBmb3IgdGhlIGN5Y2xpYyBtb2RlOiAz
MTQ1NzI4CnZhX2JpdHMgICAgICA6IDQ3CnBhZ2Vfb2Zmc2V0ICA6IGZmZmZjMDAwMDAwMDAwMDAK
Y2FsY3VsYXRlX3BsYXRfY29uZmlnOiBQQUdFIFNJWkUgMHgxMDAwMCBhbmQgVkEgQml0cyA0NyBu
b3Qgc3VwcG9ydGVkCmdldF9tYWNoZGVwX2luZm9fYXJtNjQ6IENhbid0IGRldGVybWluZSBwbGF0
Zm9ybSBjb25maWcgdmFsdWVzCgptYWtlZHVtcGZpbGUgRmFpbGVkLgoKCkFueSBzdWdnZXN0aW9u
cyB3ZWxjb21lZAoKCuKAlAoKCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
