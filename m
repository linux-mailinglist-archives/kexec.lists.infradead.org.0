Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C0BDF5CE
	for <lists+kexec@lfdr.de>; Mon, 21 Oct 2019 21:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/Qc7MxeB6PJQxTSpJtDVqS4wi8LL2fiwPAuRAPtac4=; b=KWUsTYj/dvR3p1
	+4p/xQFYr0xiBin8TLquvCWEk7Njzalctg7MeUwv8UFzenRfETlDG2F3uU+b5GPr2xds0o/S29wpO
	Y+cz0HWa8594d5sI3I+LbMk75d3t2ewajmTAfiP5f+Mgyuc+0y4LsCqbJOTi+Bh5jYsMAnnSg3rmu
	lrjBs1rbdyZDgqsUMOIchK600H6ecsAY2Ync8VaE4kbmQPP1sTMP8zfcd+70jtb/U2JbpsGoxuqUA
	RHQvpxbeLwI5ZGWzHxPc69OWUqZMVs1CYZxPgfAYWlC5/Dg2V926F+kbpoqkJ+qhYOAqWvXiUN7tI
	5sTBZsGGS52A2GRwhejg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdAq-0008SA-Jp; Mon, 21 Oct 2019 19:17:00 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMdAn-0008Rp-8x
 for kexec@lists.infradead.org; Mon, 21 Oct 2019 19:16:58 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9LJEDNT104904;
 Mon, 21 Oct 2019 19:16:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=NAcBIYf8q9IS21STCy/e9Z9fqUbn/dCpsOMzzdgL32U=;
 b=p8LnrVGX/ET+4Zn/qDHb818EHYwi3Ykgzm80UXJQ9HSz0WAe9PA1oj3XiSEMLGYKnb6W
 LPKtJBgt1JyoALa+3ulcsptw0KDx286QPLoEu0K96Dv0PdVVoyyjyQ4nFkV2DOFqgYiy
 uAO93Fez1cUjowO3FAnDiJAwNhYngI+Fukm34UXu1l4YCshZ5JHz8w9VxsI1XZsefCGq
 g+JnsUZCWRXeixZaj1NWGPtoWqo7Bxh4XwhiJSwwMD3CuYeaN4y9EmbA64Ee/DACrCxL
 Mm9PUMPQGc0cVGB9cHscOr0reh+Tad4t3Nn2OIlPGoeW3oCZ3KoDxwMxVXCzDlxZg83G FQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2vqu4qhpav-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 21 Oct 2019 19:16:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9LJ9FvU175726;
 Mon, 21 Oct 2019 19:16:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2vsakbs2xt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 21 Oct 2019 19:16:55 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9LJGtQ4009295;
 Mon, 21 Oct 2019 19:16:55 GMT
Received: from dhcp-10-154-105-47.vpn.oracle.com (/10.154.105.47)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 21 Oct 2019 12:16:54 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Makedumpfile help for 5.4.0.rc3 : Arm
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
Date: Mon, 21 Oct 2019 14:16:51 -0500
Message-Id: <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910210185
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910210186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_121657_401377_FD11EB80 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaAoKPiBPbiBPY3QgMjEsIDIwMTksIGF0IDE6NTMgUE0sIEJodXBlc2ggU2hhcm1h
IDxiaHNoYXJtYUByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBIZWxsbyBKb2huLAo+IAo+IE9uIE1v
biwgT2N0IDIxLCAyMDE5IGF0IDk6MzkgUE0gSm9obiBEb25uZWxseQo+IDxqb2huLnAuZG9ubmVs
bHlAb3JhY2xlLmNvbT4gd3JvdGU6Cj4+IAo+PiAKPj4gCj4+IEhlbGxvLAo+PiAKPj4gCj4+IEth
enVoaXRvIEhhZ2lvIGFza2VkIG1lIHRvIHNoYXJlIG15IHRlc3QgcmVzdWx0cyBvbiB0aGlzIHBh
dGNoIGZvciBtYWtlZHVtcGZpbGUgOgo+PiAKPj4gCj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9v
ZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fc291cmNlZm9yZ2UubmV0X3BfbWFrZWR1bXBm
aWxlX2NvZGVfY2lfN2JkYjQ2OGMyYzk5ZGQ3ODBjOWE1MzIxZjkzYzc5Y2JmZGNlMjUyN18mZD1E
d0lDQWcmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9dDJm
UGc5RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPVVrTHE5cnBSQ0RqN0Rx
S2EtNWRWbHZTN3lNWnhCN2p2TmQ5YUd1dHZFdTAmcz1kOVRMbU9QVk80UEZ0dmNGd1ZPZVpSY01n
MFVPbXkwNFhkZ3p0VnhYV3lnJmU9IAo+PiAKPj4gQW5kIEkgd2FzIHN1Y2Nlc3NmdWxseSBhYmxl
IHRvIGdldCB2bWNvcmUgZHVtcHMgb24gdm1saW51ei01LjMuNiBhbmQgNS40LjAtcmMzIEludGVs
ICggeDg2LTY0KSBrZXJuZWxzLgo+PiAKPj4gSSBhbSBzdGlsbCBoYXZpbmcgZGlmZmljdWx0aWVz
IGdldHRpbmcgdm1jb3JlcyBvbiA1LjQuMC5yYzMgICBBcm0ga2VybmVscyB3aXRoIHRoaXMgdXBk
YXRlIHRvIG1ha2VkdW1wZmlsZS4KPj4gCj4+IEkgZ2V0IHRoaXMgbWVzc2FnZTsKPj4gCj4+IAo+
PiBCdWZmZXIgc2l6ZSBmb3IgdGhlIGN5Y2xpYyBtb2RlOiAzMTQ1NzI4Cj4+IHZhX2JpdHMgICAg
ICA6IDQ3Cj4+IHBhZ2Vfb2Zmc2V0ICA6IGZmZmZjMDAwMDAwMDAwMDAKPj4gY2FsY3VsYXRlX3Bs
YXRfY29uZmlnOiBQQUdFIFNJWkUgMHgxMDAwMCBhbmQgVkEgQml0cyA0NyBub3Qgc3VwcG9ydGVk
Cj4+IGdldF9tYWNoZGVwX2luZm9fYXJtNjQ6IENhbid0IGRldGVybWluZSBwbGF0Zm9ybSBjb25m
aWcgdmFsdWVzCj4+IAo+PiBtYWtlZHVtcGZpbGUgRmFpbGVkLgo+PiAKPj4gCj4+IEFueSBzdWdn
ZXN0aW9ucyB3ZWxjb21lZAo+IAo+IEkgYW0gd29ya2luZyBvbiB0aGUgY2hhbmdlcyBpbiB0aGUg
dm1jb3JlaW5mbyBhZnRlciB0aGUgNTItYml0IFZBCj4gY2hhbmdlcyBmcm9tIFN0ZXZlIHdlcmUg
YWNjZXB0ZWQgaW4gTGludXggNS40LXJjMSAoIlN1cHBvcnQgZm9yIDUyLWJpdAo+IHZpcnR1YWwg
YWRkcmVzc2luZyBpbiBrZXJuZWwgc3BhY2XigJ0pLgoKCiAgIEkgZG9u4oCZdCBzZWUgYSBjb21t
aXQgd2l0aCB0aGlzIHRpdGxlIGluIGxpbnV4LXN0YWJsZSAgOyAgQ291bGQgeW91IGJlIGEgbGl0
dGxlIG1vcmUgc3BlY2lmaWMgd2hhdCBmaWxlICB0aGF0IHdhcyBhcHBsaWVkIHRvID8gIApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5n
IGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
